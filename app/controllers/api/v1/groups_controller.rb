class Api::V1::GroupsController < Api::V1::ApplicationController
  def index
    super
    if params[:board_id]
      board = Board.find(params[:board_id])
      @groups = @groups.where(board_id: board.id)
    end
  end
end
