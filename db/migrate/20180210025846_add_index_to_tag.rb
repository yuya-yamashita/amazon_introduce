class AddIndexToTag < ActiveRecord::Migration[5.1]
  def change
    add_index :tags, [:name, :site_id], :unique => true
  end
end
