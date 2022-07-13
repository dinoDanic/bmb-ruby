module Types
  class MutationType < Types::BaseObject
    field :organization_create, mutation: Mutations::OrganizationCreate
    field :customer_create, mutation: Mutations::CustomerCreate
  end
end
