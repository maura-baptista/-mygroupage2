class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  	@currencies = [["EUR", 1], ["USD", 0.873945], ["GBP", 1.10979], ["CAD", 0.641066], ["CHF", 0.887800]]
  	@selected_currency = params[:currency]
  	@container_size = params["container"].to_f
  	@selected_volume = params["volume"].to_f
  	@price = params["price"].to_f
  	@selected_metrics = params[:metrics]

  	@left_space = @container_size - @selected_volume
  	@result = (@price / @container_size) * @left_space  

  end
end
