class AddIndexToSiteProducts < ActiveRecord::Migration[5.1]
  def change
    add_index :site_products, [:site_id, :product_id], :unique => true
  end
end
