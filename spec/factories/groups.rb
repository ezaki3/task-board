FactoryGirl.define do
  factory :group do
    board
    sequence(:subject) { |n| "グループ-#{n}" }
    sequence(:priority) { |n| n + 10 }
  end
end
