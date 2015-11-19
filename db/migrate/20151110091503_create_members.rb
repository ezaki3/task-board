class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.references :item, null: false, index: true, foreign_key: true
      t.references :user, null: false, index: true, foreign_key: true
      t.boolean :is_owner, null: false, default: false

      t.timestamps null: false
    end
  end
end
