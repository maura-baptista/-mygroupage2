class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :login]

  layout :resolve_layout

  def home

  end

  def login
  	@user = User.new
  	
  end

  private

  def resolve_layout
  	case display
    when "login"
       "devise"
    else
       "application"
    end
  end
end
