class GroupagesController < ApplicationController
	skip_before_action :authenticate_user!, only: [:index, :show, :new]

  def index
  end

  def show
  end

  def new
  	@groupage = Groupage.new
  	@container = Container.new
  end

  def create
  end
end
