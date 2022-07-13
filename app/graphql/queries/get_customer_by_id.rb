module Queries
    class GetCustomerById < Queries::BaseQuery
      description 'Get customer by id'

      argument :organization_id, String, required: true
      argument :customer_id, String, required: true
        
      type Types::CustomerType, null: false
  
      def resolve(organization_id: ,customer_id:)
        raise GraphQL::ExecutionError, 'Missing bearer token' if context[:current_user].nil?

        customer = Organization.find(organization_id).customers.find(customer_id)


      end
    end
  end
    