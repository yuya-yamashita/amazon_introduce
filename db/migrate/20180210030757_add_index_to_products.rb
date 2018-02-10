class AddIndexToProducts < ActiveRecord::Migration[5.1]
  def change
    add_index :products, [:products_id, :title], :unique => true
  end
end
