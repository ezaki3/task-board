module RequestHelpers
  def login
    @user = create(:user)
    OmniAuth.config.test_mode = true
    OmniAuth.config.mock_auth[:github] = { provider: @user.provider, uid: @user.uid }
    get '/auth/github/callback'
  end

  def truncate_users # for only sqlite
    User.connection.execute("DELETE FROM users")
    User.connection.execute("DELETE FROM sqlite_sequence where name='users'")
    User.connection.execute("VACUUM")
  end
end
