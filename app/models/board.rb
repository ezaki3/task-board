class Board < Item
  has_many :groups, -> { order(:priority) }, dependent: :destroy, foreign_key: :parent_id

  after_initialize :set_default_value, if: :new_record?

  private

  def set_default_value
    self.parent_id ||= 0
  end
end
