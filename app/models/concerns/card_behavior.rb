module CardBehavior
  extend ActiveSupport::Concern

  included do
    validates :subject, presence: true
    validates :priority, numericality: {only_integer: true}, allow_blank: true

    before_save :adjust_priority

    scope :prior, -> { order(:priority, updated_at: :desc) }
    scope :peers, ->(parent_id) { where(parent_id: parent_id) if parent_id.present? }
  end

  private

  def adjust_priority
    if self.priority.blank?
      self.priority = (self.class.peers(self.parent_id).maximum(:priority) || 0).next
      return
    end
    return if self.class.peers(self.parent_id).where(priority: self.priority).blank?
    unless self.changes[:priority]
      from = to = self.priority
    else
      from = self.changes[:priority].first || (self.class.peers(self.parent_id).maximum(:priority) || 0)
      to = self.changes[:priority].last
    end
    operation = from < to ? '-' : '+'
    self.class.peers(self.parent_id)
      .where(priority: [from, to].min..[from, to].max)
      .where.not(id: self.id)
      .update_all('priority = priority %s 1' % operation)
  end
end
