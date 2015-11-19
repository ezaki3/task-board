class Api::V1::BoardsController < Api::V1::ApplicationController
  include Membership
  include Draggable
  include Talkable

  private

  def resource_params
    params.require(model_name.underscore.intern).permit(
      *@model.column_names.map(&:intern), :user_id,
      members_attributes: [:item_id, :user_id, :is_owner, :release]
    )
  end

  def my_url
    url_for(instance_variable_get(resource))
  end
end
