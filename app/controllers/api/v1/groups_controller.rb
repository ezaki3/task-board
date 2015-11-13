class Api::V1::GroupsController < Api::V1::ApplicationController
  include Membership

  def index
    super
    if params[:board_id]
      board = Board.find(params[:board_id])
      @groups = @groups.where(board_id: board.id)
    end
  end

  def show
    if params[:board_id]
      @group = Group.find_by!(id: params[:id], board_id: params[:board_id])
    else
      super
    end
  end

  def resource_params
    params.require(model_name.underscore.intern).permit(
      *@model.column_names.map(&:intern) + [:user_id, :board_id]
    )
  end
end
