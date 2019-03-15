ActiveAdmin.register Estimate do

	permit_params :departure_location, :arrival_location, :expat_first_name, :expat_last_name, :expat_email, :expat_phone_number

	index do
	    selectable_column
	    column :id
	    column :departure_location
	    column :arrival_location
	    column :expat_first_name
	    column :expat_last_name
	    column :rexpat_email
	    column :expat_phone_number
	    column :created_at
	    actions
	end
end