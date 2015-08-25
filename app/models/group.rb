class Group < ActiveRecord::Base
  has_many :tasks
  validates :subject, presence: true
  validates :priority, numericality: {only_integer: true}
end
