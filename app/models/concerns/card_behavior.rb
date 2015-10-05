module CardBehavior
  extend ActiveSupport::Concern

  included do
    validates :subject, presence: true
    validates :priority, numericality: {only_integer: true}, allow_blank: true

    before_save :adjust_priority

    scope :prior, -> { order(:priority, updated_at: :desc) }
  end
end
