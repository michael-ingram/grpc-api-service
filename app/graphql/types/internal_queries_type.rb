module Types
  class InternalQueriesType < Types::BaseObject
    field :flight, resolver: Queries::Flight
  end
end