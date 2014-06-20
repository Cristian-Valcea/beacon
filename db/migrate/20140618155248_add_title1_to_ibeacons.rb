class AddTitle1ToIbeacons < ActiveRecord::Migration
  def change
    add_column :ibeacons, :Title1, :string
  end
end
