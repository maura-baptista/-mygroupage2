class AddMoveSizeToAlerts < ActiveRecord::Migration[5.2]
  def change
    add_column :alerts, :move_size, :string
  end
end
