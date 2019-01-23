class AddDestinationCoordinatesToGroupages < ActiveRecord::Migration[5.2]
  def change
    add_column :groupages, :destination_latitude, :float
    add_column :groupages, :destination_longitude, :float
  end
end
