class AddTitle2ToIbeacons < ActiveRecord::Migration
  def change
    add_column :ibeacons, :Title2, :string
  end
end
