module Types
  class FlightResponse < Types::BaseResolveType
    field :flight, Types::FlightType, null: true
  end
end