class EstimatesController < ApplicationController

	skip_before_action :authenticate_user!, only: [ :create]


	def create
		@estimate = Estimate.new(estimate_params)
		@estimate.save

		if  @estimate.save
			redirect_to pages_quotes_form_confirmation_path
		else
			render :new
		end
	end


	private

	def estimate_params
	    params.require(:estimate).permit(:departure_location, :arrival_location, :expat_first_name, :expat_last_name, :expat_email, :expat_phone_number)
	end
end
