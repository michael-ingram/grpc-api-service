module Types
  class FlightType < BaseObject
    field :unique_id, String, null: true
    field :flight_date, String, null: true
    field :tail_number, String, null: true
    field :airline_designator, String, null: true
    field :flight_number, String, null: true
    field :onward_flight_number, String, null: true
    field :status, String, null: true
    field :scheduled_departure_airport, String, null: true
    field :scheduled_arrival_airport, String, null: true
    field :std, String, null: true
    field :sta, String, null: true
    field :std_local, String, null: true
    field :sta_local, String, null: true
    field :offset_da, String, null: true
    field :offset_aa, String, null: true
    field :aircraft_manufacture, String, null: true
    field :aircraft_type, String, null: true
    field :aircraft_config, String, null: true
    field :aircraft_version, String, null: true
    field :flight_type, String, null: true
    field :actual_departure_airport, String, null: true
    field :actual_arrival_airport, String, null: true
    field :departure_gate, String, null: true
    field :arrival_gate, String, null: true
    field :actual_times, Types::ActualTimesType, null: true
    field :estimated_times, Types::EstimatedTimesType, null: true
    field :pax_booked, Integer, null: true
    field :pax_flown, Integer, null: true
    field :delays, [Types::DelayType], null: true
    field :bags_booked, Integer, null: true
    field :fuels, [Types::FuelType], null: true
    field :crew_checked_in, Boolean, null: true
    field :star_flight, Boolean, null: true
    field :desk, String, null: true
  end
end