class MoviesController < ApplicationController
  def index
  	@studios=Studio.all
  end
  def new
  	@studio = Studio.new
  end
  def create
  	@studio = Studio.new(params.require(:studio).permit(:name,:address,:url))
  	if @studio.save
  		redirect_to movies_url
  	else
  		redirect_to movies_url
  	end
  end
end
