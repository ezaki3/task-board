class Task < ActiveRecord::Base
  validates :subject, presence: true
end