class RenameColumnWaveHeightToForecast < ActiveRecord::Migration[6.0]
  def change
    rename_column :forecasts, :wave_height, :min_wave_height
  end
end
