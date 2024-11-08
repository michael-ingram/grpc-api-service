class InternalSchema < GraphQL::Schema
  disable_introspection_entry_points if Rails.env.production?

  query(Types::InternalQueriesType)
  mutation(Types::InternalMutationsType)
end