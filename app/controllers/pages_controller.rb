class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :login, :hire_mover, :list_confirmation]

  
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
    render layout: "groupage-form"
  end


  def alert_confirmation
    # @alert = Alert.new
    @alert = Alert.last
   
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
