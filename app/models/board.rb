class Board < ActiveRecord::Base
  include CardBehavior

  has_many :groups, -> { order(:priority) }

  attr_accessor :parent_id

  def parent_id
    nil
  end

  private

  def parent_changed
    nil
  end
end
