class CreateMovers < ActiveRecord::Migration[5.2]
  def change
    create_table :movers do |t|
      t.string :company_name
      t.string :country
      t.float :country_lat
      t.float :country_long
      t.string :responsible_first_name
      t.string :responsible_last_name
      t.string :responsible_function
      t.string :email
      t.string :phone_number

      t.timestamps
    end
  end
end
