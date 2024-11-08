module Types
  class StationsResponse < BaseResolveType
    field :stations, [Station], null: true
  end
end
