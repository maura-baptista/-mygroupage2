class AddAgreementAndNewsletterToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :agreement, :boolean
    add_column :users, :newsletter, :boolean
  end
end
