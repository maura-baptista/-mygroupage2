class User < ApplicationRecord
	has_many :groupages
  has_many :containers, through: :groupages  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # validates :agreement, acceptance: { message: 'must accept terms' }
  validates :agreement, acceptance: { accept: true }, on: :create, allow_nil: false



end
