class AddImage1ToIbeacon < ActiveRecord::Migration
  def change
	add_column :ibeacons, :image1, :string
  end
end
