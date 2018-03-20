FactoryBot.define do
  factory :user do
    sequence(:provider, 'github')
    sequence(:uid, '11111')
    sequence(:nickname, 'nice-guy')
    sequence(:email, 'nice-guy@example.com')
    sequence(:name, 'Nice Guy')
    sequence(:url, 'http://nice-guy.example.com')
    sequence(:avatar_url, 'https://nice-guy.example.com/nice-guy.png')
    sequence(:gravatar_id, '2')
  end
end
