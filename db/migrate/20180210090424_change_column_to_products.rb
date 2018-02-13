class ChangeColumnToProducts < ActiveRecord::Migration[5.1]
  def change
    change_column :products, :site_id, :integer, null: false
  end
end
