class ContainersController < ApplicationController
skip_before_action :authenticate_user!, only: [:new, :calculator, :create, :update]

  def new

  	
  end

  def calculator
    @container = Container.new
  	@container = Container.new(container_params)
  	@metrics = @container[:metrics].to_f
  	@container_size = @container[:container_size].to_f * @metrics
  	@volume = @container[:volume].to_f
  	@price = @container[:price].to_f
 	 @currency = @container[:currency]
    @left_space = @container_size - @volume 

    @result = (@price / @container_size) * @left_space
  end

  def create
  #   @container = Container.new
  #   @container = Container.new(container_params)
  #   @groupage = Groupage.find(@groupage.id)
  #   @groupage.container = @container
  #    @container.user = current_user
  #     if @container.save
  #       redirect_to user_steps_path
  #     else
  #       render :new
  #     end
  end

  def edit
    @container = Container.find(params[:id])
    
  end

  def update
    @container = Container.find(params[:id])
    @container.update(container_params)
    if @container.save
      redirect_to user_steps_path
    else
      render :new
    end

    # @groupage = Groupage.new(params[:groupage])
    # @groupage = Groupage.find(@groupage.id)
    # @container = @groupage.container
    # @container = Container.new(params[:container])

  end

  private 

  def container_params
  	params.require(:container).permit(:container_size, :volume, :price, :metrics, :currency)
  end
end
