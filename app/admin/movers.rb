ActiveAdmin.register Mover do
	 permit_params :company_name, :office_address, :responsible_first_name, :responsible_last_name, :responsible_function, :email, :phone_number, :groupage_experience

	index do
	    selectable_column
	    column :id
	    column :company_name
	    column :responsible_first_name
	    column :responsible_last_name
	    column :responsible_function
	    column :email
	    column :phone_number
	    column :groupage_experience
	    column :created_at
	    actions
	end
	form do |f|
	    f.inputs "Mover Partner" do
	      f.input :company_name
	      f.input :responsible_first_name
	      f.input :responsible_last_name
	      f.input :responsible_function
	      f.input :email
	      f.input :phone_number
	      f.input :groupage_experience
	    end
	   
	    f.actions
	end

end