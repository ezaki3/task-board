module Draggable
  extend ActiveSupport::Concern

  def index
    instance_variable_set(resource(:tableize), @model.readable(session[:user_id]).prior)
  end
end
