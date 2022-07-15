module Types
  class QueryType < Types::BaseObject
    field :me, resolver: Queries::Me
    field :organizations_get_active, resolver: Queries::OrganizationsGetActive
    field :get_customers_by_organization_id, resolver: Queries::GetCustomersByOrganizationId
    field :get_customer_by_id, resolver: Queries::GetCustomerById
    field :get_offices_by_customer_id, resolver: Queries::GetOfficesByCustomerId
  end
end
