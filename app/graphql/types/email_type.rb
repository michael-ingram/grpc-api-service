module Types
  class EmailType < BaseObject
    field :priority, String, null: false
    field :type, String, null: false
    field :email_address, String, null: false
  end
end
