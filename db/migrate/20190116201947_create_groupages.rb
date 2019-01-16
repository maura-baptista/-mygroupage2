class CreateGroupages < ActiveRecord::Migration[5.2]
  def change
    create_table :groupages do |t|
      t.string :origin
      t.string :destination
      t.string :departure_date
      t.string :mover
      t.string :notification_email
      t.integer :phone_number
      t.references :user, foreign_key: true
      t.references :container, foreign_key: true

      t.timestamps
    end
  end
end
