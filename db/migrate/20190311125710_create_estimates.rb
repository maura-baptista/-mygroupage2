class CreateEstimates < ActiveRecord::Migration[5.2]
  def change
    create_table :estimates do |t|
      t.string :departure_location
      t.string :arrival_location
      t.string :expat_first_name
      t.string :expat_last_name
      t.string :expat_email
      t.string :expat_phone_number

      t.timestamps
    end
  end
end
