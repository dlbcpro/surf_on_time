  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end

class ForecastDecorator < Draper::Decorator
  delegate_all

  def wind_angle
    angles = {
      "N" => 1,
      "NNE" => 2,
      "NE" => 3,
      "ENE" => 4,
      "E" => 5,
      "ESE" => 6,
      "SE" => 7,
      "SSE" => 8,
      "S" => 9,
      "SSW" => 10,
      "SW" => 11,
      "WSW" => 12,
      "W" => 13,
      "WNW" => 14,
      "NW" => 15,
      "NNW" => 16
    }

    angles[object.wind_direction] * 22.5
  end
end
