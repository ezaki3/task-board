class Card < ActiveRecord::Base
  self.abstract_class = true

  validates :subject, presence: true
  validates :priority, numericality: {only_integer: true}, allow_blank: true

  before_create :default_priority
  before_update :shift_other_priorities
end
