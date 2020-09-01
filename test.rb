ap "coucou"


start = '2020-08-27'
date_end = '2020-08-28'


day_start = start.to_date
day_end = date_end.to_date



ap Spot.find(1).avg_min_wave_height(day_start, day_end)
