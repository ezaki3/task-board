class Group < ActiveRecord::Base
  validates :subject, presence: true
end
