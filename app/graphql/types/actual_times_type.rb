module Types
  class ActualTimesType < BaseObject
    field :actual_block_off, String, null: true
    field :actual_take_off, String, null: true
    field :actual_touch_down, String, null: true
    field :actual_block_on, String, null: true
  end
end
