class AddIndexToSites < ActiveRecord::Migration[5.1]
  def change
    add_index :sites, [:user_id, :name], :unique => true
  end
end
