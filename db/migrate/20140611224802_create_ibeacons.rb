class CreateIbeacons < ActiveRecord::Migration
  def change
    create_table :ibeacons do |t|
      t.string :beacon_id
      t.integer :user_id

      t.timestamps
    end
	add_index :ibeacons, [:user_id]
	add_index :ibeacons, [:beacon_id]
  end
end
