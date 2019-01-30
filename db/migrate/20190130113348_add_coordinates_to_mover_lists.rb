class AddCoordinatesToMoverLists < ActiveRecord::Migration[5.2]
  def change
    add_column :mover_lists, :lead_origin_lat, :float
    add_column :mover_lists, :lead_origin_long, :float
    add_column :mover_lists, :lead_destination_lat, :float
    add_column :mover_lists, :lead_destination_long, :float
  end
end
