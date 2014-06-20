class AddDescription2ToIbeacons < ActiveRecord::Migration
  def change
    add_column :ibeacons, :Description2, :string
  end
end
