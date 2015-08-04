FactoryGirl.define do
  factory :group do
    sequence(:subject) { |n| "グループ-#{n}" }
  end
end
