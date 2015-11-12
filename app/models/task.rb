class Task < Item
  belongs_to :group, foreign_key: :parent_id

  alias_attribute :group_id, :parent_id
end
