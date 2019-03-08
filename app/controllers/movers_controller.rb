class MoversController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]

  def index
  end

  def new
  	@mover = Mover.new
    render layout: "mover"
  end

  def create
  	 @mover = Mover.new(mover_params)

  	if @mover.save
      redirect_to  pages_partner_form_confirmation_path
  
    else
      render :new
    end

  end


  private

  def mover_params
    params.require(:mover).permit(:company_name, :office_address, :responsible_first_name, :responsible_last_name, :responsible_function, :email, :phone_number, :groupage_experience)
  end

  # def create_user
  #   generated_password = Devise.friendly_token.first(8)
  #   User.new(:first_name => (@mover.company_name if !@mover.company_name.empty?) || [@mover.responsible_first_name, @mover.responsible_last_name].join(' '),
  #            :email => @mover.email,
  #            :password => generated_password,
  #            :profileable => @mover)

  # end
end
