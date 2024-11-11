module Types
  class PhoneType < BaseObject
    field :priority, String, null: false
    field :type, String, null: true
    field :phone_number, String, null: false
    field :normalized, String, null: false
  end
end
