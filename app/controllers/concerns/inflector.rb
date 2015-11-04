# sourced from http://t.y13i.com/post/83102660768/ruby-on-rails

module Inflector
  extend ActiveSupport::Concern

  private

  def set_model
    @model = controller_name.classify.constantize
  end

  def model_name
    @model.to_s
  end

  def resource(inflector = :underscore)
     :"@#{model_name.send(inflector)}"
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_resource
    instance_variable_set(resource, @model.find(params[:id]))
  end

  def get_location
    instance_variable_get(resource)
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def resource_params
    params.require(model_name.underscore.intern).permit(*@model.column_names.map(&:intern))
  end

  def resource_name(inflector = :intern) # or to_s
    model_name.underscore.send(inflector)
  end
end
