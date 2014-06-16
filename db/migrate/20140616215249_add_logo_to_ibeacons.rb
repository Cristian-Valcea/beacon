class AddLogoToIbeacons < ActiveRecord::Migration
  def change
    add_column :ibeacons, :logo, :string
  end
end
