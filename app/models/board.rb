class Board < ActiveRecord::Base
  has_many :groups
  validates :subject, presence: true
  validates :priority, numericality: {only_integer: true}, allow_blank: true
end
