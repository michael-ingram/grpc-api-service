module Queries
  class Flight < BaseQuery
    description 'Returns a flight by id'

    argument :unique_id, String, required: true, description: 'Navblue unique id'

    type Types::FlightResponse, null: false

    def resolve(unique_id:)
      execute('NB2', 'Unable to retrieve flight', {unique_id: unique_id}) do
        flight = NavblueClient.new.flight_by_id(unique_id)

        {
          flight: flight
        }
      end
    end
  end
end