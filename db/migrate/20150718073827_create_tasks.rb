class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :subject, null: false
      t.text :body

      t.timestamps null: false
    end
  end
end
