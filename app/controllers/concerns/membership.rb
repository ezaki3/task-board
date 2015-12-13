module Membership
  extend ActiveSupport::Concern
  include Inflector

  included do
    before_action :set_creator, only: :create
    before_action :listable!, only: :index
    before_action :readable!, only: :show
    before_action :creatable!, only: [:new, :create, :dry_create]
    before_action :editable!, only: [:edit, :update, :dry_update]
    before_action :deletable!, only: :destroy
  end

  private

  def set_creator
    @model ||= set_model
    params[resource_name][:created_by] = session[:user_id]
  end

  def listable!
    creatable!
  end

  def readable!
    unless @model.readable(session[:user_id]).find_by(id: params[:id])
      render json: {error: 'not found'}, status: :not_found
    end
  end

  def creatable!
    # Anyone can create if logged in
    # Implement on includes controller if you need
  end

  def editable!
    readable!
  end

  def deletable!
    readable!
  end
end
