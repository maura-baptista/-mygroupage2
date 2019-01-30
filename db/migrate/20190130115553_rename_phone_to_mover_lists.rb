class RenamePhoneToMoverLists < ActiveRecord::Migration[5.2]
  def change
  	rename_column :mover_lists, :lead_phone, :lead_email
  end
end
