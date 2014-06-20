class AddTabButton2ToIbeacons < ActiveRecord::Migration
  def change
    add_column :ibeacons, :TabButton2, :string
  end
end
