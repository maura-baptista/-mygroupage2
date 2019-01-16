class ContainersController < ApplicationController
skip_before_action :authenticate_user!, only: [:new, :calculator]

  def new
  	@container = Container.new
  end

  def calculator
  	@container = Container.new(saving_params)
  	@metrics = @container[:metrics].to_f
  	@container_size = @container[:container_size].to_f * @metrics
  	@volume = @container[:volume].to_f
  	@price = @container[:price].to_f
 	 @currency = @container[:currency]
  @left_space = @container_size - @volume
 


  @result = (@price / @container_size) * @left_space

  end

  private 

  def submit
    @container[:commit] == "Calculate"
  end

  def saving_params
  	params.require(:container).permit(:container_size, :volume, :price, :metrics, :currency)
  end
end
