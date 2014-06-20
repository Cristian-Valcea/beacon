class AddDescription1ToIbeacons < ActiveRecord::Migration
  def change
    add_column :ibeacons, :Description1, :string
  end
end
