class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  	@currencies = [["EUR", 1], ["USD", 0.873945], ["GBP", 1.10979], ["CAD", 0.641066], ["CHF", 0.887800]]
  	@selected_currency = params[:currency]
  	@container_size = params[:container].to_i
  	@selected_volume = params[:volume].to_i
  	@selected_metrics = params[:metrics]

  	left_space = @container_size - @selected_volume
  

  	 end
end
