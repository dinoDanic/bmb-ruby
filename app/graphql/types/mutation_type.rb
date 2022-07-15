module Types
  class MutationType < Types::BaseObject
    field :organization_create, mutation: Mutations::OrganizationCreate
    field :customer_create, mutation: Mutations::CustomerCreate
    field :office_create, mutation: Mutations::OfficeCreate
  end
end
