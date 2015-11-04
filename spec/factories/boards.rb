FactoryGirl.define do
  factory :board do
    sequence(:subject) { |n| "ボード-#{n}" }
    sequence(:priority) { |n| n + 1000 }
    user

    factory :board_with_groups do
      transient do
        groups_count 3
      end

      after(:create) do |board, evaluator|
        create_list(:group, evaluator.groups_count, board: board, user: user)
      end
    end
  end
end
