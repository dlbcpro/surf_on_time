class AddColumnSurfWindDirectionToForecast < ActiveRecord::Migration[6.0]
  def change
    add_column :forecasts, :surf_wind_direction, :string
  end
end
