class Task < ActiveRecord::Base
  belongs_to :group
  validates :subject, presence: true
  validates :priority, numericality: {only_integer: true}
end
