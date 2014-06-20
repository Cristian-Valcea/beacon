class AddTitle3ToIbeacons < ActiveRecord::Migration
  def change
    add_column :ibeacons, :Title3, :string
  end
end
