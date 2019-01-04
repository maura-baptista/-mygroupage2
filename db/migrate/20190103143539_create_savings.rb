class CreateSavings < ActiveRecord::Migration[5.2]
  def change
    create_table :savings do |t|
      t.integer :volume
      t.integer :price
      t.string :container
      t.string :metrics
      t.string :currency

      t.timestamps
    end
  end
end
