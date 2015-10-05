class Task < ActiveRecord::Base
  include CardBehavior

  belongs_to :group

  private

  def adjust_priority
    if self.priority.blank?
      self.priority = (Task.where(group_id: self.group_id).maximum(:priority) || 0).next
      return
    end
    return if Task.find_by(group_id: self.group_id, priority: self.priority).blank?
    Task.where(group_id: self.group_id)
      .where('priority >= ?', self.priority)
      .where.not(id: self.id)
      .update_all('priority = priority + 1')
  end
end
