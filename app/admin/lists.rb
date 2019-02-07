ActiveAdmin.register List do
	 permit_params :lead_origin, :lead_destinatio, :lead_date, :lead_email

	 index do
	    selectable_column
	    column :id
	    column :lead_origin
	    column :lead_destinatio
	    column :lead_date
	    column :lead_email
	    column :created_at
	    actions
	end
end
