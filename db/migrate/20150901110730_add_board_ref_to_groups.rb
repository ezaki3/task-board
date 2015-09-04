class AddBoardRefToGroups < ActiveRecord::Migration
  def change
    add_reference :groups, :board, index: true, foreign_key: true
  end
end
