class MoversController < ApplicationController
  def index
  end

  def new
  	@mover = Mover.new
  end
end
