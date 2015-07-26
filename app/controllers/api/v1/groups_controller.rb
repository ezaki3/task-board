class Api::V1::GroupsController < Api::V1::ApplicationController
  before_action :set_group, only: [:show, :update, :destroy]

  # GET /groups
  def index
    @groups = Group.all
  end

  # GET /groups/1
  def show
  end

  # POST /groups
  def create
    @group = Group.new(group_params)

    if @group.save
      # render :show, status: :created, location: @group
      render :show, status: :created, location: api_v1_group_url(id: @group.id)
    else
      render json: @group.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /groups/1
  def update
    if @group.update(group_params)
      # render :show, status: :ok, location: @group
      render :show, status: :ok, location: api_v1_group_url
    else
      render json: @group.errors, status: :unprocessable_entity
    end
  end

  # DELETE /groups/1
  def destroy
    @group.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group
      @group = Group.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group_params
      params.require(:group).permit(:subject)
    end
end
