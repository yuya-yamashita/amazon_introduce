class Products < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :site_id, :integer
    add_column :products, :amazon_id, :integer
  end
end
