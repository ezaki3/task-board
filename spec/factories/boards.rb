FactoryGirl.define do
  factory :board do
    sequence(:subject) { |n| "グループ-#{n}" }
    sequence(:priority) { |n| n + 1000 }
  end
end
