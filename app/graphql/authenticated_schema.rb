class AuthenticatedSchema < GraphQL::Schema
  disable_introspection_entry_points if Rails.env.production?

  query(Types::AuthenticatedQueriesType)
end