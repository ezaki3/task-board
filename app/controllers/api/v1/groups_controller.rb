class Api::V1::GroupsController < Api::V1::ApplicationController
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
end
