class Task < ActiveRecord::Base
  belongs_to :group
  validates :subject, presence: true
end
