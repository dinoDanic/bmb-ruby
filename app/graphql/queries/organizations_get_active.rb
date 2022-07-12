module Queries
  class OrganizationsGetActive < Queries::BaseQuery
    description 'Get active organizations'

    type [Types::OrganizationType], null: false

    def resolve
      raise GraphQL::ExecutionError, 'Missing bearer token' if context[:current_user].nil?
      organizations = User.find(context[:current_user].id).organizations
    end
  end
end
    