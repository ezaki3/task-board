class User < ActiveRecord::Base
  include KeywordSearch

  has_many :members
  has_many :items, through: :members

  def self.create_with_omniauth(auth)
    create!(
      provider: auth.provider,
      uid: auth.uid,
      nickname: auth.info.nickname,
      email: auth.info.email,
      name: auth.info.name,
      url: auth.info.urls['GitHub'],
      avatar_url: auth.info.image,
      gravatar_id: auth.extra.raw_info.gravatar_id
    )
  end
end
