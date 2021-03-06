class UserStepsController < ApplicationController
	 include Wicked::Wizard

  	steps :mover_info, :personal_info, :close

  	layout "groupage-form"
  	
  	
	def show
		# @container = Container.new(params[:container])
		@user = current_user
		case step
		when :mover_info
			@container = @user.containers.last
			@container = Container.find(@container.id)
		    @metrics = @container[:metrics].to_f
		    @container_size = @container[:container_size].to_f * @metrics
		    @volume = @container[:volume].to_f
		    @price = @container[:price].to_f
		   @currency = @container[:currency]
		    @left_space = @container_size - @volume 

		    @result = (@price / @container_size) * @left_space


			@groupage = @user.groupages.last
			@groupage = Groupage.find(@groupage.id)


		when :personal_info
			@container = @user.containers.last
			@container = Container.find(@container.id)
		    @metrics = @container[:metrics].to_f
		    @container_size = @container[:container_size].to_f * @metrics
		    @volume = @container[:volume].to_f
		    @price = @container[:price].to_f
		   @currency = @container[:currency]
		    @left_space = @container_size - @volume 

		    @result = (@price / @container_size) * @left_space
			@groupage = @user.groupages.last
			@groupage = Groupage.find(@groupage.id)
		when :close
			@container = @user.containers.last
			@container = Container.find(@container.id)
		    @metrics = @container[:metrics].to_f
		    @container_size = @container[:container_size].to_f * @metrics
		    @volume = @container[:volume].to_f
		    @price = @container[:price].to_f
		   	@currency = @container[:currency]
		    @left_space = @container_size - @volume 

		    @result = (@price / @container_size) * @left_space

		end
			# @groupage = Groupage.new(params[:groupage])
		render_wizard
	end

	def update
		@user = current_user
		@groupage = @user.groupages.last
	
	  	@groupage = Groupage.find(@groupage.id)
	  	case step
	  	when :mover_info
	  		# @graupage.attributes = params[:groupage]
	  		@groupage.update(groupage_params)
	  	when :personal_info
	  		@groupage.update(groupage_params)
	  	end
	  	render_wizard @groupage
	end

	def groupage_params
    	params.require(:groupage).permit(:origin, :destination, :departure_date, :mover, :notification_email, :phone_number, :phone_prefix)
  	end
end
