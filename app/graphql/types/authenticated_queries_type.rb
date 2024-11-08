module Types
  class AuthenticatedQueriesType < Types::BaseObject
    field :flight, resolver: Queries::Flight
    field :flights, resolver: Queries::Flights
    field :user_flights, resolver: Queries::UserFlights
    field :crew_flights, resolver: Queries::CrewFlights
    field :flight_plan, resolver: Queries::FlightPlan
    field :charter_flights, resolver: Queries::CharterFlights
    field :aircraft_types, resolver: Queries::AircraftTypes
  end
end
