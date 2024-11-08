module Types
  class LocationDetails < BaseObject
    field :countryCode, String, null: true
    field :cityCode, String, null: true
    field :provinceStateCode, String, null: true
    field :timeZoneCode, String, null: true
    field :coordinates, Types::Coordinates, null: true
  end
end