class UserStepsController < ApplicationController
	 include Wicked::Wizard

  	steps :personal, :social, :close

  	layout "calculator"
  	
	def show
		# @container = Container.new(params[:container])
		@user = current_user
		case step
		when :personal
			@groupage = @user.groupages.last
			@groupage = Groupage.find(@groupage.id)
		when :social
			@groupage = @user.groupages.last
			@groupage = Groupage.find(@groupage.id)
		end
			# @groupage = Groupage.new(params[:groupage])
		render_wizard
	end

	def update
		@user = current_user
		@groupage = @user.groupages.last
	
	  	@groupage = Groupage.find(@groupage.id)
	  	case step
	  	when :personal
	  		# @graupage.attributes = params[:groupage]
	  		@groupage.update(groupage_params)
	  	when :social
	  		@groupage.update(groupage_params)
	  	end
	  	render_wizard @groupage
	end

	def groupage_params
    	params.require(:groupage).permit(:origin, :destination, :departure_date, :mover, :notification_email, :phone_number, :phone_prefix)
  	end
end
