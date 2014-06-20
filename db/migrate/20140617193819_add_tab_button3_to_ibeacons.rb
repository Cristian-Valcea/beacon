class AddTabButton3ToIbeacons < ActiveRecord::Migration
  def change
    add_column :ibeacons, :TabButton3, :string
  end
end
