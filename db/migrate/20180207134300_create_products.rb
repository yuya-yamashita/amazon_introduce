class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.text :title, :null => false
      t.integer :price, :null => false
      t.string :image, :null => false
      t.text :description, :null => false

      t.timestamps
    end
  end
end
