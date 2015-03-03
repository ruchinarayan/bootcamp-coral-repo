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
  def show
    @studio= Studio.find(params[:id])
  end
  def edit
    @studio = Studio.find(params[:id])
  end
  def update
    @studio = Studio.find(params[:id])
    if @studio.update(params.require(:studio).permit(:name,:address,:url))
      redirect_to studio_url(studio)
    else
      redirect_to studio_url
    end
  end
  def destroy
    @studio = Studio.find(params[:id])
    @studio.destroy
    redirect_to studios_url
  end
end
