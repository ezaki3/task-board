FactoryGirl.define do
  factory :task do
    group
    sequence(:subject) { |n| "件名-#{n}" }
    sequence(:body) { |n| "本文-#{n}" }
    sequence(:priority) { |n| n + 100 }
    user
  end
end
