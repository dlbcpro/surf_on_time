class SpotsController < ApplicationController
  before_action :find_spot, only: :show

  def index
    set_start
    set_end

    number_days = (@end - @start).to_i + 1
    @spots = Spot.joins(:forecasts)
                 .where("forecasts.day >=  ? AND forecasts.day < ?", @start, @end + 1)
                 .where("forecasts.min_wave_height > ?", 0.7)
                 .group(:id)
                 .having("COUNT(distinct DATE(forecasts.day)) = ?", number_days)
  end

  def show
    set_start
    set_end

    find_spot
    @surf_schools = SurfSchool.near([@spot.latitude, @spot.longitude], 100, order: :distance)
    @markers = @surf_schools.geocoded.map do |surf_school|
      {
        lat:        surf_school.latitude,
        lng:        surf_school.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { surf_school: surf_school })
      }
    end
    @spot_marker = { lat: @spot.latitude, lng: @spot.longitude }
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

  def set_start
    if params[:start].present?
      @start = params[:start].to_date
    else
      @start = Date.today
    end
  end

  def set_end
    if params[:end].present?
      @end = params[:end].to_date
    else
      @end = Date.today + 6
    end
  end
end
