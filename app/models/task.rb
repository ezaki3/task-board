class Task < Item
  belongs_to :group, foreign_key: :parent_id

  alias_attribute :group_id, :parent_id

  scope :readable, ->(user_id) {
    joins(group: [board: :members]).where(members: {user_id: user_id})
  }
end
