module Ownable
  extend ActiveSupport::Concern
  include Inflector

  included do
    before_action :set_user, only: :create
  end

  private

  def set_user
    @model ||= set_model
    params[resource_name][:user_id] = session[:user_id]
  end
end
