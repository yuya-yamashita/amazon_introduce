class RenameProductColumnToSiteProducts < ActiveRecord::Migration[5.1]
  def change
    rename_column :site_products, :product, :product_id
  end
end
