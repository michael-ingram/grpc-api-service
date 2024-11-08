module Types
  class BaseResolveType < BaseObject
    field :error_code, String, null: true
    field :error_message, String, null: true
  end
end