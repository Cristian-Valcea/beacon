class AddTabButton1ToIbeacons < ActiveRecord::Migration
  def change
    add_column :ibeacons, :TabButton1, :string
  end
end
