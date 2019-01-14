class AddCoordinatesToGroupages < ActiveRecord::Migration[5.2]
  def change
    add_column :groupages, :latitude, :float
    add_column :groupages, :longitude, :float
  end
end
