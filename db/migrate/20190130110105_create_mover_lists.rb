class CreateMoverLists < ActiveRecord::Migration[5.2]
  def change
    create_table :mover_lists do |t|
      t.string :lead_origin
      t.string :lead_destination
      t.string :lead_date
      t.string :lead_phone
      t.float :lead_latitude
      t.float :lead_longitude

      t.timestamps
    end
  end
end
