class RenameCountryColumnOnMovers < ActiveRecord::Migration[5.2]
  def change
  	 rename_column :movers, :country, :office_address
  end
end
