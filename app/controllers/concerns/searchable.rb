module Searchable
  extend ActiveSupport::Concern

  def index
    instance_variable_set(resource(:tableize), @model.search(request.query_parameters))
  end
end
