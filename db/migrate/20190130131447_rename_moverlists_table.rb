class RenameMoverlistsTable < ActiveRecord::Migration[5.2]
  def change
  	rename_table :mover_lists, :lists
  end
end
