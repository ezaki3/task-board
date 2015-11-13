class Api::V1::BoardsController < Api::V1::ApplicationController
  include Membership

  def resource_params
    params.require(model_name.underscore.intern).permit(
      *@model.column_names.map(&:intern) + [:user_id]
    )
  end
end
