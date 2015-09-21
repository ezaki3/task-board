class Group < ActiveRecord::Base
  include CardBehavior

  belongs_to :board
  has_many :tasks

  private

  def default_priority
    self.priority ||= (self.class.where(board_id: board_id).maximum(:priority) || 0).next
  end

  def shift_other_priorities
    return default_priority if self.priority.blank?
    return if Group.find_by(priority: self.priority, board_id: self.board_id).blank?
    Group.where(
      'priority >= ?', self.priority
    ).where(
      board_id: self.board_id
    ).update_all(
      'priority = priority + 1'
    )
  end
end
