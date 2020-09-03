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
      name: 'LES ESTAGNOTS',
      msw_id: '890',
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
      name: 'VIEUX BOUCAU',
      msw_id: '64',
      continent: 'EUROPE',
      country: 'FRANCE',
      region: 'LANDES'
    )

    Spot.create(
      name: 'LA TORCHE',
      msw_id: '72',
      continent: 'EUROPE',
      country: 'FRANCE',
      region: 'FINISTERE-SOUTH'
    )

    Spot.create(
      name: 'GOLD BEACH',
      msw_id: '5567',
      continent: 'EUROPE',
      country: 'FRANCE',
      region: 'MANCHE'
    )

    Spot.create(
      name: 'OMAHA BEACH',
      msw_id: '5553',
      continent: 'EUROPE',
      country: 'FRANCE',
      region: 'MANCHE'
    )

    Spot.create(
      name: 'BLANCS-SABLONS',
      msw_id: '74',
      continent: 'EUROPE',
      country: 'FRANCE',
      region: 'BRITTANY-NORTH'
    )

    Spot.create(
      name: 'LE PETIT MINOU',
      msw_id: '1520',
      continent: 'EUROPE',
      country: 'FRANCE',
      region: 'BRITTANY-NORTH'
    )

    Spot.create(
      name: 'PLAGE DU LOCH',
      msw_id: '1557',
      continent: 'EUROPE',
      country: 'FRANCE',
      region: 'MORBIHAN & LOIRE ATLANTIQUE'
    )

    Spot.create(
      name: 'LA CÔTE SAUVAGE',
      msw_id: '1556',
      continent: 'EUROPE',
      country: 'FRANCE',
      region: 'MORBIHAN & LOIRE ATLANTIQUE'
    )

    Spot.create(
      name: 'LES DUNES',
      msw_id: '1570',
      continent: 'EUROPE',
      country: 'FRANCE',
      region: 'VENDÉE'
    )

    Spot.create(
      name: 'LES SABLES-D\'OLONNE',
      msw_id: '4677',
      continent: 'EUROPE',
      country: 'FRANCE',
      region: 'VENDÉE'
    )

    ##############################################

    Spot.create(
      name: 'BARZAN-PLAGE',
      msw_id: '5990',
      continent: 'EUROPE',
      country: 'FRANCE',
      region: 'GIRONDE'
    )

    Spot.create(
      name: 'CARCANS',
      msw_id: '1535',
      continent: 'EUROPE',
      country: 'FRANCE',
      region: 'GIRONDE'
    )

    Spot.create(
      name: 'BIARRITZ GRANDE PLAGE',
      msw_id: '62',
      continent: 'EUROPE',
      country: 'FRANCE',
      region: 'BIARRITZ/ANGLET'
    )

    Spot.create(
      name: 'COTE DES BASQUES',
      msw_id: '894',
      continent: 'EUROPE',
      country: 'FRANCE',
      region: 'BIARRITZ/ANGLET'
    )

    Spot.create(
      name: 'BELHARRA PERDUN',
      msw_id: '1543',
      continent: 'EUROPE',
      country: 'FRANCE',
      region: 'LA CÔTE BASQUE'
    )

    Spot.create(
      name: 'BIDART',
      msw_id: '1540',
      continent: 'EUROPE',
      country: 'FRANCE',
      region: 'LA CÔTE BASQUE'
    )

    Spot.create(
      name: 'CANET PLAGE',
      msw_id: '3511',
      continent: 'EUROPE',
      country: 'FRANCE',
      region: 'MEDITERRANEAN FRANCE-WEST'
    )

    Spot.create(
      name: 'BANDOL',
      msw_id: '3523',
      continent: 'EUROPE',
      country: 'FRANCE',
      region: 'MEDITERRANEAN FRANCE-WEST'
    )

    Spot.create(
      name: 'ALGAJOLA',
      msw_id: '3503',
      continent: 'EUROPE',
      country: 'FRANCE',
      region: 'SOUTHERN FRANCE - EAST'
    )

    Spot.create(
      name: 'BEAUVALLON',
      msw_id: '3495',
      continent: 'EUROPE',
      country: 'FRANCE',
      region: 'SOUTHERN FRANCE - EAST'
    )

    Spot.create(
      name: 'GUETHARY',
      msw_id: '896',
      continent: 'EUROPE',
      country: 'FRANCE',
      region: 'BIARRITZ/ANGLET'
    )

    Spot.create(
      name: 'ILBARRITZ',
      msw_id: '895',
      continent: 'EUROPE',
      country: 'FRANCE',
      region: 'BIARRITZ/ANGLET'
    )

    Spot.create(
      name: 'CAP DE L\'HOMY',
      msw_id: '885',
      continent: 'EUROPE',
      country: 'FRANCE',
      region: 'LANDES'
    )

    Spot.create(
      name: 'ERRETEGIA',
      msw_id: '1511',
      continent: 'EUROPE',
      country: 'FRANCE',
      region: 'LA CÔTE BASQUE'
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
