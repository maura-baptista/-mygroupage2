class ListsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]

	layout "groupage-form"

  def new
  	@list = List.new
  end

  def create
  	@list = List.new(list_params)
    # @list.user = current_user
     if @list.save
      redirect_to  pages_list_confirmation_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  private

  def list_params
    params.require(:list).permit(:lead_origin, :lead_destination, :lead_date, :lead_email)
  end
end
