FactoryBot.define do
  factory :board do
    # sequence(:parent_id) { |n| }
    sequence(:subject) { |n| "ボード-#{n}" }
    sequence(:body) { |n| "ボード本文\n#{n}" }
    sequence(:priority) { |n| n + 1000 }
    sequence(:created_by) { |n| n + 2000 }

    factory :board_with_groups do
      transient do
        groups_count 3
      end

      after(:create) do |board, evaluator|
        create_list(:group, evaluator.groups_count, parent: board)
      end
    end
  end
end
