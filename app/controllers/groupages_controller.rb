class GroupagesController < ApplicationController
	skip_before_action :authenticate_user!, only: [:index, :show]
  # before_action :set_container, only: [:create]
  
  
 
  def form_opening
  end

  

  def index
    @groupage = Groupage.new
    @params_hash = request.query_parameters[:groupage]
    @groupage = @params_hash

  end

  def show
  end

  def new
  	@groupage = Groupage.new
    @container = Container.new
    render layout: "groupage-form"
    
  end

  def create
    @container = Container.new(params[:container])
    @container.user = current_user
    @container.save
    @container = Container.find(@container.id)

    # @groupage = Groupage.new(groupage_params)
    # @groupage.container = @container

    # @user = User.new(params[:user])
    # @user.save
    # @user = current_user
    # @user = User.find(@user.id)
    # @groupage.user = current_user
    @groupage = Groupage.new(groupage_params)
    @groupage.container = @container

    @groupage.user = @groupage.container.user 

      if @groupage.save

        redirect_to edit_container_path(@container)
      else
        render :new
        # format.json { render json: @groupage.errors, status: :unprocessable_entity }

      end

  end


  private
    # def set_container
    #   @container = Container.find(params[:container_id])
    # end

  def groupage_params
    params.require(:groupage).permit(:origin, :destination, :departure_date, :mover, :notification_email, :phone_number, :phone_prefix)
  end




end
