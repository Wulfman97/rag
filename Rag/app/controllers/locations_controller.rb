class LocationsController < ApplicationController
  before_action :find_location, only: [:edit, :show, :update, :destroy]
  
  def index
    @locations = Location.all
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    if @location.save
      redirect_to locations_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @location.update(location_params)
      redirect_to location_path
    else
      render :edit
    end
  end

  def show
    @comments = Location.find(params[:id]).comments
    @random_location = Location.find(params[:id])
    #@comments = @random_location.comments
  end

  def random_location
    @locations = Location.all
    @random_location = @locations.sample
    @comments = @random_location.comments
  end

  def destroy
    @location.destroy
    redirect_to locations_path
  end
    
  private

  def location_params
    params.require(:location).permit(:address, :latitude, :longitude)
  end

  def find_location
    @location = Location.find(params[:id])
  end

end
