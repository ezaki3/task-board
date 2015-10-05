class Board < ActiveRecord::Base
  include CardBehavior

  has_many :groups, -> { order(:priority) }

  private

  def adjust_priority
    self.priority = (Board.maximum(:priority) || 0).next if self.priority.blank?
    return if Board.find_by(priority: self.priority).blank?
    Board.where('priority >= ?', self.priority)
      .where.not(id: self.id)
      .update_all('priority = priority + 1')
  end
end
