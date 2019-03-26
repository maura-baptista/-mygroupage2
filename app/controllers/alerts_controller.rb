class AlertsController < ApplicationController
	skip_before_action :authenticate_user!, only: [:new, :create]


  def new
  	@alert = Alert.new
  	@groupage = Groupage.new
  	query_params = request.query_parameters
  	@groupage = query_params





  	
  	
  	 # @groupage = Groupage.new
    # params_hash = request.query_parameters[:groupage]
    # @groupage = params_hash
  end

  def create
     

   @alert = Alert.new(alert_params)
   
   

   @groupage = @alert
     
  	if @alert.save

  		
      redirect_to   pages_alert_confirmation_path
       #redirect_to   controller: "pages", action: "alert_confirmation", query_parameters: @alert
    else

      render :new


    end

  end



  private

  def alert_params
    params.require(:alert).permit(:alert_email, :origin, :destination, :departure_date, :move_size)
  end

end
