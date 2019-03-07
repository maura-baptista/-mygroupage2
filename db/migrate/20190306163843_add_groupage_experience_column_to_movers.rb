class AddGroupageExperienceColumnToMovers < ActiveRecord::Migration[5.2]
  def change
  	 add_column :movers, :groupage_experience, :string
  end
end
