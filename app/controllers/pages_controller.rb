class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :login, :hire_mover, :list_confirmation]

  layout "devise", only: [:login]
  # layout :resolve_layout

  def home
    render layout: "application"
  end

  def login
  	# @user = User.new
  	# render layout: "devise"
  	# render layout: false
  end

  def hire_mover
    render layout: "form-cover"
  end

  def list_confirmation
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
