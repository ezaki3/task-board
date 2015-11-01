class Api::V1::UsersController < Api::V1::ApplicationController
  def current
    user = User.find(session[:user_id])
    if user
      render json: user.to_json#, status: :ok}
    else
      render json: {msg: 'unauthorized'}, status: :unauthorized # TODO: Implement!
    end
  end
end
