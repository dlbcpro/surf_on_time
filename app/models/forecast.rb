class Forecast < ApplicationRecord
  belongs_to :spot

  def match?(params)
    min_wave_height >= params[:min].to_f &&
    max_wave_height <= params[:max].to_f &&
    surf_wind_direction == 'Offshore'    
  end
end
