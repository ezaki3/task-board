class Group < ActiveRecord::Base
  include CardBehavior

  belongs_to :board
  has_many :tasks, -> { order(:priority) }

  private

  def adjust_priority
    if self.priority.blank?
      self.priority = (Group.where(board_id: self.board_id).maximum(:priority) || 0).next
      return
    end
    return if Group.find_by(board_id: self.board_id, priority: self.priority).blank?
    Group.where(board_id: self.board_id)
      .where('priority >= ?', self.priority)
      .where.not(id: self.id)
      .update_all('priority = priority + 1')
  end
end
