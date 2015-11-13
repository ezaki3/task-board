class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :parent, null: false
      t.string :subject, null: false
      t.text :body
      t.string :type, null: false, index: true
      t.integer :priority, null: false
      t.integer :created_by, null: false

      t.timestamps null: false
    end
  end
end
