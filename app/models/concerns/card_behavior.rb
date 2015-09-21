module CardBehavior
  extend ActiveSupport::Concern

  included do
    validates :subject, presence: true
    validates :priority, numericality: {only_integer: true}, allow_blank: true

    before_create :default_priority
    before_update :shift_other_priorities

    scope :prior, -> { order(:priority, updated_at: :desc) }
  end
end
