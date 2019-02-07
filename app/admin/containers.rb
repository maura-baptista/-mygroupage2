ActiveAdmin.register Container do

	 permit_params :volume, :price, :currency, :container_size, :metrics, :user_id, :phone_prefix, :user_id

	index do
	    selectable_column
	    column :id
	    column :volume
	    column :price
	    column :currency
	    column :container_size
	    column :metrics
	    column :user
		column :created_at
	    actions
	end

end
