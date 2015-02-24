# mfshamim
class TheatersController < ApplicationController
  def index
  	  	# Grab all theaters.
  	@theaters = Theater.all
  end

  def new
  	@theater = Theater.new
  end

  def create
  	@theater = Theater.new(params.require(:theater).permit(:theater_name, :theater_address, :theater_phone))
  	if @theater.save
  		redirect_to theater_url(@theater)
  	else
  		redirect_to theaters_url
  	end
  end

  def show
    @theater = Theater.find(params[:id])
  end

  def edit
    @theater = Theater.find(params[:id])
  end

  def update
    @theater = Theater.find(params[:id])
    if @theater.update(params.require(:theater).permit(:theater_name, :theater_address, :theater_phone))
      redirect_to theater_url(@theater)
    else
      redirect_to theaters_url
    end
  end

  def destroy
    @theater = Theater.find(params[:id])
    @theater.destroy
    redirect_to theaters_url
  end

end
