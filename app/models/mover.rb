class Mover < ApplicationRecord

	geocoded_by :office_address, :latitude => :country_lat, :longitude => :country_long
	after_validation :geocode, if: :will_save_change_to_office_address?

	
	EMPLOYEE_ROLE = ["Owner", "General Manager", "Branch Manager", "Sales Manager", "Sales staff", "Other staff"]
	validates :responsible_function, inclusion: {in: EMPLOYEE_ROLE}

	validates :responsible_first_name, presence: true
    validates :responsible_last_name, presence: true
    validates :email, presence: true, uniqueness: { case_sensitive: false }

   # validate :office_address_coordinates

   #  def office_address_coordinates
	  #   if office_address.empty? || country_lat.nil? || country_long.nil?
	  #     errors.add(:office_address, "has an unknown location")
	  #   end
  	# end
end








