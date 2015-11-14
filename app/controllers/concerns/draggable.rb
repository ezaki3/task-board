module Draggable
  extend ActiveSupport::Concern

  def index
    instance_variable_set(resource(:tableize), @model.prior)
  end
end
