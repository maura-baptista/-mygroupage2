class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :login, :hire_mover, :list_confirmation, :alert_confirmation, :terms_and_conditions, :privacy_policy,  :moving_guides, :share_my_container, :partner_form_confirmation ]

  
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

  def moving_guides
  end 

  def share_my_container
    @estimate = Estimate.new
    render layout: "share_my_container"
  end

  def partner_form_confirmation
    render layout: "mover"
  end

  def quotes_form_confirmation
    render layout: "form-cover"
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
