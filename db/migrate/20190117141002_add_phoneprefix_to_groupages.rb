class AddPhoneprefixToGroupages < ActiveRecord::Migration[5.2]
  def change
  	add_column :groupages, :phone_prefix, :integer
  end
end
