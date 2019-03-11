class AddCoordinatesToEstimates < ActiveRecord::Migration[5.2]
  def change
    add_column :estimates, :departure_location_lat, :float
    add_column :estimates, :departure_location_long, :float
    add_column :estimates, :arrival_location_lat, :float
    add_column :estimates, :arrival_location_long, :float
  end
end
