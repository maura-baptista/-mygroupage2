class CreateMoveSizes < ActiveRecord::Migration[5.2]
  def change
    create_table :move_sizes do |t|
	  t.string :size
      t.timestamps
    end
  end
end
