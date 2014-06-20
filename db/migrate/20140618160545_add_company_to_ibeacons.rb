class AddCompanyToIbeacons < ActiveRecord::Migration
  def change
    add_column :ibeacons, :Company, :string
  end
end
