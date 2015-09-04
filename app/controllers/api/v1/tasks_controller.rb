class Api::V1::TasksController < Api::V1::ApplicationController
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
end
