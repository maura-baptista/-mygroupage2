class RenameContainersColumnOnContainers < ActiveRecord::Migration[5.2]
  def change
  	  rename_column :containers, :container, :container_size
  end
end
