class ChangeColumnWindDirectionToForecasts < ActiveRecord::Migration[6.0]
  def change
    change_column :forecasts, :wind_direction, :string
  end
end
