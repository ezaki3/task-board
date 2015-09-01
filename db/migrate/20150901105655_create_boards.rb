class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :subject, null: false
      t.integer :priority

      t.timestamps null: false
    end
  end
end
