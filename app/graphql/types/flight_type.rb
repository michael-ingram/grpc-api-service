module Types
  class FlightType < BaseObject
    field :unique_id, String, null: true
    field :flight_date, String, null: true
    field :flight_number, String, null: true
    field :status, String, null: true
    field :scheduled_departure_airport, String, null: true
    field :scheduled_arrival_airport, String, null: true
    field :std, String, null: true
    field :sta, String, null: true
  end
end