module Types
  class AddressType < BaseObject
    field :priority, String, null: false
    field :type, String, null: false
    field :street, String, null: false
    field :street_number, String, null: true
    field :zip_code, String, null: false
    field :city, String, null: false
    field :country, String, null: false
    field :state, String, null: false
  end
end
