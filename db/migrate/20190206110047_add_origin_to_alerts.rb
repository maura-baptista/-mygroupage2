class AddOriginToAlerts < ActiveRecord::Migration[5.2]
  def change
  	add_column :alerts, :origin, :string
  end
end
