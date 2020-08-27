class AddColumnMaxWaveHeightToForecast < ActiveRecord::Migration[6.0]
  def change
    add_column :forecasts, :max_wave_height, :float
  end
end
