class SavingsController < ApplicationController
  def new
  	@saving = Saving.new
  end

  def calculator
  	@saving = Saving.new(saving_params)
  	@metrics = @saving[:metrics].to_f
  	@container_size = @saving[:container].to_f * @metrics
  	@volume = @saving[:volume].to_f
  	@price = @saving[:price].to_f
 	 @currency = @saving[:currency]
  @left_space = @container_size - @volume
 


  @result = (@price / @container_size) * @left_space

  end

  private 

  def saving_params
  	params.require(:saving).permit(:container, :volume, :price, :metrics, :currency)
  end
end
