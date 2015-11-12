FactoryGirl.define do
  factory :task do
    group
    sequence(:subject) { |n| "タスク-#{n}" }
    sequence(:body) { |n| "タスク本文\n#{n}" }
    sequence(:priority) { |n| n + 100 }
    sequence(:created_by) { |n| n + 200 }
  end
end
