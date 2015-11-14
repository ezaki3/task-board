json.array!(@users) do |user|
  json.extract! user, :id, :provider, :uid, :nickname, :email, :name, :url, :avatar_url, :gravatar_id
  json.url api_v1_user_url(user, format: :json)
end
