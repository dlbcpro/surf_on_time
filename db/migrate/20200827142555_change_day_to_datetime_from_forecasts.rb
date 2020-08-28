class ChangeDayToDatetimeFromForecasts < ActiveRecord::Migration[6.0]
  def change
    change_column :forecasts, :day, :datetime
  end
end
