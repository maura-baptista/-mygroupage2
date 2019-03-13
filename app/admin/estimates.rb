ActiveAdmin.register Estimate do

	permit_params :departure_location, :arrival_location, :expat_first_name, :expat_last_name, :expat_email, :expat_phone_number
end