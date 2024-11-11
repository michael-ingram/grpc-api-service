module Types
  class CrewMemberType < BaseObject
    field :unique_id, String, null: true
    field :number, String, null: true
    field :firstname, String, null: true
    field :lastname, String, null: true
    field :created_at, String, null: true
    field :base, String, null: true
    field :rank, String, null: true
    field :phones, [Types::PhoneType], null: true
    field :emails, [Types::EmailType], null: true
    field :bases, [String], null: true
    field :ranks, [String], null: true
    field :addresses, [Types::AddressType], null: true
    field :qualifications, [String], null: true
    field :qualification, String, null: true
    field :assigned_rank, String, null: true
    field :roster_designator, String, null: true
    field :active, Boolean, null: true
    field :seniority, String, null: true
  end
end
