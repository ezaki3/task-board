class Api::V1::TasksController < Api::V1::ApplicationController
  include Membership
  include Draggable
  include UpdateNotifier
  include Talkable

  def index
    super
    if params[:group_id]
      group = Group.find(params[:group_id]) # Raise error here if group is not exist
      @tasks = @tasks.where(group_id: group.id)
    end
  end

  def show
    if params[:group_id]
      @task = Task.find_by!(id: params[:id], group_id: params[:group_id])
    else
      super
    end
  end

  private

  def resource_params
    params.require(model_name.underscore.intern).permit(
      *@model.column_names.map(&:intern), :user_id, :group_id,
      members_attributes: [:item_id, :user_id, :is_owner, :release]
    )
  end

  def my_url
    url_for(instance_variable_get(resource).group.board)
  end

  def resource_for_notification
    @board = Board.find(@task.group.board_id)
  end

  def template_for_notification
    'api/v1/boards/show'
  end

  def creatable!
    if g = Group.find_by(id: params[:group_id]) and
      g.board.members.find_by(user_id: session[:user_id])
      return
    end
    render json: {error: 'not found'}, status: :not_found
  end
end
