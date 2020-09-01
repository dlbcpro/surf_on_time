class AddColumnSeaTemperatureToForecasts < ActiveRecord::Migration[6.0]
  def change
    add_column :forecasts, :sea_temperature, :integer
  end
end
