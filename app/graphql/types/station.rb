module Types
  class Station < BaseObject
    field :allowed, Boolean, null: true
    field :locationDetails, Types::LocationDetails, null: true
    field :currencyCode, String, null: true
    field :inActive, Boolean, null: true
    field :fullName, String, null: true
    field :stationCode, String, null: true
  end
end