module Queries
    class GetCustomersByOrganizationId < Queries::BaseQuery
      description 'Get organizations customers'
  
      type [Types::CustomerType], null: false
  
      def resolve
        raise GraphQL::ExecutionError, 'Missing bearer token' if context[:current_user].nil?
        # customers = Organizati
        # organizations = User.find(context[:current_user].id).customer
      end
    end
  end
    