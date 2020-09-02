require 'json'
require 'date'

class Importer
  def self.call
    Forecast.destroy_all
    Spot.destroy_all

    create_spots
    create_forecasts
  end

  def self.create_spots
    # data = JSON.parse(File.read("#{Rails.root}/app/services/#{spot.msw_id}.json"))

    # data.each do
    Spot.create(
      name: 'HOSSEGOR (LA GRAVIERE)',
      msw_id: '38',
      continent: 'EUROPE',
      country: 'FRANCE',
      region: 'SOORTS-HOSSEGOR'
    )

    Spot.create(
      name: '',
      msw_id: '',
      continent: 'EUROPE',
      country: 'FRANCE',
      region: 'SOORTS-HOSSEGOR'
    )

    Spot.create(
      name: 'MOLIETS PLAGE',
      msw_id: '887',
      continent: 'EUROPE',
      country: 'FRANCE',
      region: 'LANDES'
    )

    Spot.create(
      name: '',
      msw_id: '',
      continent: 'EUROPE',
      country: 'FRANCE',
      region: ''
    )

    Spot.create(
      name: 'LA TORCHE',
      msw_id: '72',
      continent: 'EUROPE',
      country: 'FRANCE',
      region: 'FINISTERE-SOUTH'
    )

    Spot.create(
      name: '',
      msw_id: '',
      continent: 'EUROPE',
      country: 'FRANCE',
      region: ''
    )

    Spot.create(
      name: '',
      msw_id: '',
      continent: 'EUROPE',
      country: 'FRANCE',
      region: ''
    )

    Spot.create(
      name: '',
      msw_id: '',
      continent: 'EUROPE',
      country: 'FRANCE',
      region: ''
    )

    Spot.create(
      name: '',
      msw_id: '',
      continent: 'EUROPE',
      country: 'FRANCE',
      region: ''
    )

    Spot.create(
      name: '',
      msw_id: '',
      continent: 'EUROPE',
      country: 'FRANCE',
      region: ''
    )

    Spot.create(
      name: '',
      msw_id: '',
      continent: 'EUROPE',
      country: 'FRANCE',
      region: ''
    )

    Spot.create(
      name: '',
      msw_id: '',
      continent: 'EUROPE',
      country: 'FRANCE',
      region: ''
    )

    Spot.create(
      name: '',
      msw_id: '',
      continent: 'EUROPE',
      country: 'FRANCE',
      region: ''
    )

    Spot.create(
      name: '',
      msw_id: '',
      continent: 'EUROPE',
      country: 'FRANCE',
      region: ''
    )

    ##############################################

    Spot.create(
      name: '',
      msw_id: '',
      continent: 'EUROPE',
      country: 'FRANCE',
      region: ''
    )

    Spot.create(
      name: '',
      msw_id: '',
      continent: 'EUROPE',
      country: 'FRANCE',
      region: ''
    )

    Spot.create(
      name: '',
      msw_id: '',
      continent: 'EUROPE',
      country: 'FRANCE',
      region: ''
    )

    Spot.create(
      name: '',
      msw_id: '',
      continent: 'EUROPE',
      country: 'FRANCE',
      region: ''
    )

    Spot.create(
      name: '',
      msw_id: '',
      continent: 'EUROPE',
      country: 'FRANCE',
      region: ''
    )

    Spot.create(
      name: '',
      msw_id: '',
      continent: 'EUROPE',
      country: 'FRANCE',
      region: ''
    )

    Spot.create(
      name: '',
      msw_id: '',
      continent: 'EUROPE',
      country: 'FRANCE',
      region: ''
    )

    Spot.create(
      name: '',
      msw_id: '',
      continent: 'EUROPE',
      country: 'FRANCE',
      region: ''
    )

    Spot.create(
      name: '',
      msw_id: '',
      continent: 'EUROPE',
      country: 'FRANCE',
      region: ''
    )

    Spot.create(
      name: '',
      msw_id: '',
      continent: 'EUROPE',
      country: 'FRANCE',
      region: ''
    )

    Spot.create(
      name: '',
      msw_id: '',
      continent: 'EUROPE',
      country: 'FRANCE',
      region: ''
    )

    Spot.create(
      name: '',
      msw_id: '',
      continent: 'EUROPE',
      country: 'FRANCE',
      region: ''
    )
  end

  def self.create_forecasts
    Spot.all.each do |spot|
      # sleep 1
      # get http restclient.get
      data = JSON.parse(File.read("#{Rails.root}/app/services/#{spot.msw_id}.json"))

      data.each do |element|
        day = DateTime.strptime("#{element["timestamp"]}", '%s')
        # element["model"]["id"]
        min_wave_height = element["swell"]["absMinBreakingHeight"]
        max_wave_height = element["swell"]["absMaxBreakingHeight"]
        wind_direction = element["swell"]["compassDirection"]
        frequency = element["swell"]["period"]
        wind_force = element["wind"]["speed"]
        surf_wind_direction = element["wind"]["stringDirection"]
        air_temperature = element["condition"]["temperature"]
        sea_temperature = element["condition"]["sst"]
        weather = element["condition"]["weatherText"]

        Forecast.create(
          spot: spot,
          day: day,
          min_wave_height: min_wave_height,
          max_wave_height: max_wave_height,
          wind_direction: wind_direction,
          frequency: frequency,
          wind_force: wind_force,
          surf_wind_direction: surf_wind_direction,
          air_temperature: air_temperature,
          sea_temperature: sea_temperature,
          weather: weather
        )
      end
    end
  end
end
# Spot.create(
#   name: 'La Canau',
#   msw_id: '34567876543'
# )
#   url = "http://api.msw/spots/waves/?spot_id=#{spot.msw_id}"
#   data = open(url).read
# end

# p data[0]["timestamp"]
# p data[0]["swell"]["components"]["combined"]["power"]
# p data[0]["swell"]["components"]["combined"]["isOffshore"]

# p DateTime.strptime("#{data[0]["timestamp"]}", '%s')
# p data[0]["model"]["id"]
# p data[0]["swell"]["absMinBreakingHeight"]
# p data[0]["swell"]["absMaxBreakingHeight"]
# p data[0]["swell"]["compassDirection"]
# p data[0]["swell"]["period"]
# p data[0]["wind"]["speed"]
# p data[0]["wind"]["stringDirection"]
# p data[0]["condition"]["temperature"]
# p data[0]["condition"]["weatherText"]
