module Types
  class InternalQueriesType < Types::BaseObject
    field :flight, resolver: Queries::Flight
    field :stations, resolver: Queries::Stations
  end
end