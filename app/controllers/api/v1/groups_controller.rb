class Api::V1::GroupsController < Api::V1::ApplicationController
  include Membership
  include Draggable
  include UpdateNotifier
  include Talkable

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

  private

  def resource_params
    params.require(model_name.underscore.intern).permit(
      *@model.column_names.map(&:intern), :user_id, :board_id,
      members_attributes: [:item_id, :user_id, :is_owner, :release]
    )
  end

  def my_url
    url_for(instance_variable_get(resource).board)
  end

  def resource_for_notification
    @board = Board.find(@group.board_id)
  end

  def template_for_notification
    'api/v1/boards/show'
  end
end
