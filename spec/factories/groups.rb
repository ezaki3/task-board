FactoryGirl.define do
  factory :group do
    sequence(:subject) { |n| "グループ-#{n}" }
    sequence(:priority) { |n| n + 10 }
  end
end
