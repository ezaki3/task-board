class Group < ActiveRecord::Base
  include CardBehavior

  belongs_to :board
  has_many :tasks, -> { order(:priority) }, dependent: :destroy

  alias_attribute :parent_id, :board_id

  private

  def parent_changed
    changes[:board_id]
  end
end
