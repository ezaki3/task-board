class Board < Card
  has_many :groups

  private

  def default_priority
    self.priority ||= (self.class.maximum(:priority) || 0).next
  end

  def shift_other_priorities
    return default_priority if self.priority.blank?
    return if Board.find_by(priority: self.priority).blank?
    Board.where(
      'priority >= ?', self.priority
    ).update_all(
      'priority = priority + 1'
    )
  end
end
