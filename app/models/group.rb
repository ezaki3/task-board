class Group < Item
  belongs_to :board, foreign_key: :parent_id
  has_many :tasks, -> { order(:priority) }, dependent: :destroy, foreign_key: :parent_id

  alias_attribute :board_id, :parent_id

  scope :readable, ->(user_id) {
    joins(board: :members).where(members: {user_id: user_id})
  }
end
