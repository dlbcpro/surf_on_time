class CreateForecasts < ActiveRecord::Migration[6.0]
  def change
    create_table :forecasts do |t|
      t.float :wind_direction
      t.string :wind_compass
      t.date :day
      t.string :weather
      t.float :water_temperature
      t.float :air_temperature
      t.integer :frequency
      t.float :wave_height
      t.references :spot, null: false, foreign_key: true

      t.timestamps
    end
  end
end
