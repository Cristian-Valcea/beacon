class AddDescription3ToIbeacons < ActiveRecord::Migration
  def change
    add_column :ibeacons, :Description3, :string
  end
end
