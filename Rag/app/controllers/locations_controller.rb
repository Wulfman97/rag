class LocationsController < ApplicationController
  def index
    @locations = Location.all
  end

  def show
    @location = Location.find(params[:id])
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    if @location.save
      redirect_to posts_path
    else
      render :new
    end
  end

  def edit
    @location = Location.find(params[:id])
  end

  private

  def location_params
    params.require(:location).permit(:address, :latitude, :longitude)
  end
end
