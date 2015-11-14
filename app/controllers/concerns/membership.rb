module Membership
  extend ActiveSupport::Concern
  include Inflector

  included do
    before_action :set_creator, only: :create
  end

  private

  def set_creator
    @model ||= set_model
    params[resource_name][:created_by] = session[:user_id]
  end
end
