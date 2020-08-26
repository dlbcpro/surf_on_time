class RemoveColumnwaterTemperatureToForecast < ActiveRecord::Migration[6.0]
  def change
    remove_column :forecasts, :water_temperature
  end
end
