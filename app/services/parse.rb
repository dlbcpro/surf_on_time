require 'json'
require 'date'

class Import
  def self.call
    filepath = 'app/services/response.json'

    data = JSON.parse(File.read(filepath))

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
    Forecast.destroy_all
    Spot.destroy_all

    spot = Spot.create(name: 'HOSSEGOR (LA GRAVIERE)', continent: 'EUROPE', country: 'FRANCE', region: 'SOORTS-HOSSEGOR')
    data.each do |element|
      p DateTime.strptime("#{element["timestamp"]}", '%s')
      p element["model"]["id"]
      p element["swell"]["absMinBreakingHeight"]
      p element["swell"]["absMaxBreakingHeight"]
      p element["swell"]["compassDirection"]
      p element["swell"]["period"]
      p element["wind"]["speed"]
      p element["wind"]["stringDirection"]
      p element["condition"]["temperature"]
      p element["condition"]["weatherText"]

      Forecast.create(
        spot: spot,
      )
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

# Imprt.call

t.string "country"
    t.string "region"
    t.string "continent"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
