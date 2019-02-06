class AddDestinationToAlerts < ActiveRecord::Migration[5.2]
  def change
  	add_column :alerts, :destination, :string
  end
end
