class RenameSavingsToContainers < ActiveRecord::Migration[5.2]
  def change
  	rename_table :savings, :containers
  end
end
