class Task < Card
  belongs_to :group

  private

  def default_priority
    self.priority ||= (self.class.where(group_id: group_id).maximum(:priority) || 0).next
  end

  def shift_other_priorities
    return default_priority if self.priority.blank?
    return if Task.find_by(priority: self.priority, group_id: self.group_id).blank?
    Task.where(
      'priority >= ?', self.priority
    ).where(
      group_id: self.group_id
    ).update_all(
      'priority = priority + 1'
    )
  end
end
