module Queries
  class Stations < BaseQuery
    description 'Get All Stations'

    type Types::StationsResponse, null: false

    def resolve
      execute("NV4", "Failed to retrieve Stations") do
        response = NavitaireClient.new.get_stations

        stations = response.stations.map do |station|
          # Convert each station to a hash
          {
            allowed: station.allowed,
            locationDetails: {
              countryCode: station.location_details.country_code,
              cityCode: station.location_details.city_code,
              provinceStateCode: station.location_details.province_state_code,
              timeZoneCode: station.location_details.time_zone_code,
              coordinates: {
                latitude: station.location_details.coordinates.latitude,
                longitude: station.location_details.coordinates.longitude
              }
            },
            currencyCode: station.currency_code,
            inActive: station.in_active,
            fullName: station.full_name,
            stationCode: station.station_code
          }
        end

        {stations: }
      end
    end
  end
end