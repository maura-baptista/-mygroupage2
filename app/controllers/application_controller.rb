class ApplicationController < ActionController::Base
	layout :layout_by_resource
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?

   def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :agreement, :newsletter])
   end
   # def configure_permitted_parameters
   #    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:agreement, :first_name, :last_name }
   #  end

    # def configure_permitted_parameters
    #   devise_parameter_sanitizer.permit(:sign_up) do |user_params|
    #     user_params.permit({ agreement: [] }, :first_name, :last_name)
    #   end
    # end


    

  private

  def layout_by_resource
    if devise_controller?
      "devise"
    else
      "application"
    end
  end
end



