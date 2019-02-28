class RemoveMoveSizesTable < ActiveRecord::Migration[5.2]
  def change
  	 drop_table :move_sizes
  end
end
