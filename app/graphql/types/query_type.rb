module Types
  class QueryType < Types::BaseObject
    field :me, resolver: Queries::Me
    field :organizations_get_active, resolver: Queries::OrganizationsGetActive
  end
end
