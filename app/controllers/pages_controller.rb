class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :login, :hire_mover, :list_confirmation, :alert_confirmation, :terms_and_conditions, :privacy_policy ]

  
  # layout :resolve_layout

  def home
    render layout: "application"
  end

  def login
     render layout: "devise"
  end

  def hire_mover
    render layout: "form-cover"
  end

  def list_confirmation
    render layout: "form-cover"
  end

  def search_container
    @groupage = Groupage.new
    
  end


  def alert_confirmation
    # @alert = Alert.new
    @alert = Alert.last
   
  end

  def terms_and_conditions
  end

  def privacy_policy
  end

  private

  # def resolve_layout
  # 	case display
  #   when "login"
  #      "devise"
  #   else
  #      "application"
  #   end
  # end
end
