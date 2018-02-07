class CreateTags < ActiveRecord::Migration[5.1]
  def change
    create_table :tags do |t|
      t.text :name, :null => false
      t.integer :site_id, :null => false

      t.timestamps
    end
  end
end
