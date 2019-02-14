class AddUserToContainers < ActiveRecord::Migration[5.2]
  def change
    add_reference :containers, :user, foreign_key: true
  end
end
