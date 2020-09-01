class ChangeColumnSeaTemperatureToForecasts < ActiveRecord::Migration[6.0]
  def change
    change_column :forecasts, :sea_temperature, :float
  end
end
