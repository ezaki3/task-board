class Group < ActiveRecord::Base
  belongs_to :board
  has_many :tasks
  validates :subject, presence: true
  validates :priority, numericality: {only_integer: true}, allow_blank: true
end
