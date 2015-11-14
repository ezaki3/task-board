class Api::V1::UsersController < Api::V1::ApplicationController
  include Searchable

  def current
    @user = User.find(session[:user_id])
    if @user
      render :show
    else
      render json: {error: 'unauthorized'}, status: :unauthorized
    end
  end
end
