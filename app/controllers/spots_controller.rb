class SpotsController < ApplicationController
  def index
    @spots = Spot.all
  end

  def show
    find_spot
    @surf_schools = SurfSchool.near([@spot.latitude, @spot.longitude], 100)
    @markers = @surf_schools.geocoded.map do |surf_school|
      {
        lat:        surf_school.latitude,
        lng:        surf_school.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { surf_school: surf_school })
      }
    @spot_marker = {
      lat:        @spot.latitude,
      lng:        @spot.longitude,
      infoWindow: render_to_string(partial: "info_window", locals: { surf_school: @spot })
    }
    end
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
