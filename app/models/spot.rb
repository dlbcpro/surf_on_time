class Spot < ApplicationRecord
  has_many :forecasts

  def avg_min_wave_height(day_start, day_end)
    forecasts.where("forecasts.day >=  ? AND forecasts.day < ?", day_start, day_end + 1).average(:min_wave_height).round(2)
  end

  def avg_max_wave_height(day_start, day_end)
    forecasts.where("forecasts.day >=  ? AND forecasts.day < ?", day_start, day_end + 1).average(:max_wave_height).round(2)
  end

  def avg_air_temperature(day_start, day_end)
    forecasts.where("forecasts.day >=  ? AND forecasts.day < ?", day_start, day_end + 1).average(:air_temperature).round(2)
  end
end
