class ChangeColumnWindForceToForecast < ActiveRecord::Migration[6.0]
  def change
    change_column :forecasts, :wind_force, "integer USING wind_force::integer"
  end
end
