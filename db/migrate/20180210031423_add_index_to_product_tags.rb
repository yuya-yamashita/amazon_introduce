class AddIndexToProductTags < ActiveRecord::Migration[5.1]
  def change
    add_index :product_tags, [:tag_id, :product_id], :unique => true
  end
end
