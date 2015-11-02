module RequestHelpers
  def login
    user = create(:user)
    OmniAuth.config.test_mode = true
    OmniAuth.config.mock_auth[:github] = { provider: user.provider, uid: user.uid }
    get '/auth/github/callback'
  end
end
