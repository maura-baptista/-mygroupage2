class User < ApplicationRecord
	has_many :groupages
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


         def groupage
         	if user == current_user
         		current_user.groupages.last
         	end
         end


end
