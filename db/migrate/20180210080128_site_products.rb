class SiteProducts < ActiveRecord::Migration[5.1]
  def change
    drop_table :site_products
  end
end
