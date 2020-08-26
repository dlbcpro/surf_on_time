class SpotsController < ApplicationController
  def index
    @spots = Spot.all
  end

  def show
  end

  def update
  end

  private

  def find_spot
    @spot = Spot.find(params[:id])
  end

  def spot_params
    params.require(:spot).permit(:name, :region, :continent, :latitude, :longitude)
  end
end
