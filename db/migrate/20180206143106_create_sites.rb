class CreateSites < ActiveRecord::Migration[5.1]
  def change
    create_table :sites do |t|
      t.text :name, :null => false
      t.text :description, :null => false
      t.integer :user_id, :null => false

      t.timestamps
    end
  end
end
