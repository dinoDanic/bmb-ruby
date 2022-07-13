module Queries
    class GetCustomersByOrganizationId < Queries::BaseQuery
      description 'Get organizations customers'

      argument :organization_id, String, required: true
        
      type [Types::CustomerType], null: false
  
      def resolve(organization_id:)
        raise GraphQL::ExecutionError, 'Missing bearer token' if context[:current_user].nil?

        customers = Organization.find(organization_id).customers

      end
    end
  end
    