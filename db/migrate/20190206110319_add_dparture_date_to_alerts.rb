class AddDpartureDateToAlerts < ActiveRecord::Migration[5.2]
  def change
  	  	add_column :alerts, :departure_date, :string
  end
end
