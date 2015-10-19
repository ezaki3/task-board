class Group < ActiveRecord::Base
  include CardBehavior

  belongs_to :board
  has_many :tasks, -> { order(:priority) }

  alias_attribute :parent_id, :board_id
end
