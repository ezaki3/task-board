class Member < ActiveRecord::Base
  belongs_to :item
  belongs_to :user

  attr_accessor :release
end
