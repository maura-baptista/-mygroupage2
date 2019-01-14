class GroupagesController < ApplicationController
  def index
  	 	if params[:origin].present?
	      @groupages = Groupage.search_by_name_and_description(params[:origin])
	    else
	      @groupages = Groupage.all
	    end
  end
end
