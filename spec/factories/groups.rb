FactoryGirl.define do
  factory :group do
    board
    sequence(:subject) { |n| "グループ-#{n}" }
    sequence(:priority) { |n| n + 10 }

    factory :group_with_tasks do
      transient do
        tasks_count 3
      end

      after(:create) do |group, evaluator|
        create_list(:task, evaluator.tasks_count, group: group)
      end
    end
  end
end
