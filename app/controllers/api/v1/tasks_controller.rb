class Api::V1::TasksController < Api::V1::ApplicationController
#  require 'crudable'
  include Crudable
end

class Fugahoge
=begin
  before_action :set_task, only: [:show, :update, :destroy]

  # GET /tasks
  def index
    @tasks = Task.all
  end

  # GET /tasks/1
  def show
  end

  # POST /tasks
  def create
    @task = Task.new(task_params)

    if @task.save
      # render :show, status: :created, location: @task
      render :show, status: :created, location: api_v1_task_url(id: @task.id)
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tasks/1
  def update
    if @task.update(task_params)
      # render :show, status: :ok, location: @task
      render :show, status: :ok, location: api_v1_task_url
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tasks/1
  def destroy
    @task.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_params
      params.require(:task).permit(:subject, :body, :group_id)
    end
=end
end
