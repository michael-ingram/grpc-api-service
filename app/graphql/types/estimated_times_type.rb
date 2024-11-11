module Types
  class EstimatedTimesType < BaseObject
    field :estimated_block_off, String, null: true
    field :estimated_take_off, String, null: true
    field :estimated_touch_down, String, null: true
    field :estimated_block_on, String, null: true
  end
end
