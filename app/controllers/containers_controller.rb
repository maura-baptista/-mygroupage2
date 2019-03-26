class ContainersController < ApplicationController
skip_before_action :authenticate_user!, only: [:new, :calculator, :earnings_calculator, :form_opening, :update]

  layout "calculator"


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

  def earnings_calculator
    @estimate = Estimate.new
    @container = Container.new
    @container = Container.new(container_params)
    @metrics = @container[:metrics].to_f
    # @container_size = @container[:container_size].to_f * @metrics
    @volume = @container[:volume].to_f
    @price = @container[:price].to_f
    @currency = @container[:currency]
    


   # Container::CONTAINERS = [
   #        ["20’ container", 30],
   #        ["40’ container", 60]
          
   #      ]

    @container_size = 0

    if  @metrics == 1
      if @volume <= 27
        container_size = Container::CONTAINERS[0][1]
        @container_size = Container::CONTAINERS[0][0] 
        @metrics_display = "M3"

      elsif @volume > 27 &&  @volume < 58
        container_size = Container::CONTAINERS[1][1]
        @container_size = Container::CONTAINERS[1][0]
         @metrics_display = "M3"

      else
          container_size = Container::CONTAINERS[1][1]
          @container_size = Container::CONTAINERS[1][0]
          @metrics_display = "M3"
          # redirect_to containers_earnings_calculator_path, notice: "Great! We'll get in touch with you soon."
         flash[:notice]='Your move is too big to share a container.'
         
      end 
    elsif @metrics == 35

      if @volume <= 950
        container_size = Container::CONTAINERS[0][1]
        @container_size = Container::CONTAINERS[0][0] 
         @metrics_display = "CUFT"
      elsif @volume > 950 &&  @volume < 2000
        container_size = Container::CONTAINERS[1][1]
        @container_size = Container::CONTAINERS[1][0]
        @metrics_display = "CUFT"
      else
        container_size = Container::CONTAINERS[1][1]
        @container_size = Container::CONTAINERS[1][0]
        @metrics_display = "CUFT"
         flash[:notice]='Your move is too big to share a container.'
        
      end 
      
    end 
      container = container_size* @metrics
      @left_space = container - @volume 
      @result = (@price / container) * @left_space

    

    
  end

  def form_opening

    @container = Container.new
    @groupage = Groupage.new
    # @container = Container.new(params[:container])
    
    # @container = Container.find(@container.id)
    render layout: "form-cover"
  end
  def new
    @container = Container.new
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
    render layout: "groupage-form"
    
  end

  def update
    @container = Container.find(params[:id])
    @container.update(container_params)
    if @container.save
      redirect_to user_steps_path
    else
      render :edit
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

  def resolve_layout
    case actio_name
    when "calculator" 
      "calculator"
    when "form_opening"
      "calculator"
    else
      "application"
    end
  end

end
