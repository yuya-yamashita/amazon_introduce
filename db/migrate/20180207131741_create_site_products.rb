class CreateSiteProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :site_products do |t|
      t.integer :site_id, :null => false
      t.integer :product, :null => false

      t.timestamps
    end
  end
end
