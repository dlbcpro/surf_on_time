class RenameColumnWindCompassToForecast < ActiveRecord::Migration[6.0]
  def change
    rename_column :forecasts, :wind_compass, :wind_force
  end
end
