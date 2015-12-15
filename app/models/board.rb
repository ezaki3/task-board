class Board < Item
  has_many :groups, -> { order(:priority) }, dependent: :destroy, foreign_key: :parent_id

  after_initialize :set_default_value, if: :new_record?
  after_create :create_owner

  scope :readable, ->(user_id) {
    joins(:members).where(members: {user_id: user_id})
  }

  private

  def set_default_value
    self.parent_id ||= 0
  end

  def create_owner
    save_member(self.created_by, true)
  end
end
