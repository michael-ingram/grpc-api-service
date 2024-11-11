module Types
  class FuelType < BaseObject
    field :type, String, null: true
    field :source, String, null: true
    field :quantity, Float, null: true
    field :quantity_unit, String, null: true
    field :density, Integer, null: true
    field :density_unit, String, null: true
  end
end
