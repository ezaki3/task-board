class Api::V1::UsersController < Api::V1::ApplicationController
  def current
    user = User.find(session[:user_id])
    if user
      render json: user
    else
      render json: {error: 'unauthorized'}, status: :unauthorized
    end
  end
end
