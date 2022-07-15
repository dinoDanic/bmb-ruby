module Queries
    class GetOfficesByCustomerId < Queries::BaseQuery
      description 'Get offices from customer'

      argument :customer_id, String, required: true
        
      type [Types::OfficeType], null: false
  
      def resolve(customer_id:)
        raise GraphQL::ExecutionError, 'Missing bearer token' if context[:current_user].nil?

        offices = Customer.find(customer_id).offices

      end
    end
  end
    