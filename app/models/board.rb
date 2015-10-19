class Board < ActiveRecord::Base
  include CardBehavior

  has_many :groups, -> { order(:priority) }

  def parent_id
    nil
  end
end
