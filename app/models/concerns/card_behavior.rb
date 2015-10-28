module CardBehavior
  extend ActiveSupport::Concern

  included do
    alias_attribute :name, :subject # For RSpec !?

    validates :subject, presence: true
    validates :priority, numericality: {only_integer: true}, allow_blank: true

    before_save :adjust_priority
    after_destroy :slide_priority

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
    unless changes[:priority]
      from = to = self.priority
    else
      from = changes[:priority].first || (self.class.peers(self.parent_id).maximum(:priority) || 0)
      to = changes[:priority].last
    end
    operation = from < to ? '-' : '+'
    self.class.peers(self.parent_id)
      .where(priority: [from, to].min..[from, to].max)
      .where.not(id: self.id)
      .update_all('priority = priority %s 1' % operation)

    if parent_changed
      parent_id = parent_changed.first
      priority = changes[:priority] ? changes[:priority].first : self.priority
      slide_priority(parent_id: parent_id, priority: priority)
    end
  end

  def slide_priority(parent_id: self.parent_id, priority: self.priority)
    self.class.peers(parent_id)
      .where('priority > ?', priority)
      .where.not(id: self.id)
      .update_all('priority = priority - 1')
  end
end
