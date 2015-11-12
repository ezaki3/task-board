FactoryGirl.define do
  factory :member do
    sequence(:item_id) { |n| n }
    sequence(:user_id) { |n| n + 1 }
    owner false
  end
end
