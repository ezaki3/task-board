class Group < Item
  belongs_to :board, foreign_key: :parent_id
  has_many :tasks, -> { order(:priority) }, dependent: :destroy, foreign_key: :parent_id

  alias_attribute :board_id, :parent_id
end
