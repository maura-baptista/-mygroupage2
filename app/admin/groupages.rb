ActiveAdmin.register Groupage do

	 permit_params :origin, :destination, :departure_date, :mover, :notification_email, :phone_number, :phone_prefix, :user_id, :container_id

	index do
	    selectable_column
	    column :id
	    column :origin
	    column :destination
	    column :departure_date
	    column :mover
	    column :phone_number
	    column :notification_email
	    column :user
	    column :container
	    column :created_at
	    actions
	end
end
