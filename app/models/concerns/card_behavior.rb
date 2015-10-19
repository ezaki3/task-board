module CardBehavior
  extend ActiveSupport::Concern

  included do
    validates :subject, presence: true
    validates :priority, numericality: {only_integer: true}, allow_blank: true

    before_save :adjust_priority

    scope :prior, -> { order(:priority, updated_at: :desc) }
    scope :peers, ->(parent_id) { where(parent_id: parent_id) if parent_id.present? }
    scope :adjustable, ->(id, priority) { where('priority >= ?', priority).where.not(id: id) }
  end

  private

  def adjust_priority
    if self.priority.blank?
      self.priority = (self.class.peers(self.parent_id).maximum(:priority) || 0).next
      return
    end
    return if self.class.peers(self.parent_id).where(priority: self.priority).blank?
    self.class.peers(self.parent_id)
      .adjustable(self.id, self.priority)
      .update_all('priority = priority + 1')
  end
end
