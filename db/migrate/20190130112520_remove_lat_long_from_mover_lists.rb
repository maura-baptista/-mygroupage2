class RemoveLatLongFromMoverLists < ActiveRecord::Migration[5.2]
  def change
  	 remove_column :mover_lists, :lead_latitude
  end
end
