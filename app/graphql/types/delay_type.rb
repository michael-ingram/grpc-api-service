module Types
  class DelayType < BaseObject
    field :code, String, null: true
    field :code2, String, null: true
    field :minutes, Int, null: true
  end
end
