module Queries
    class Me < Queries::BaseQuery
      description 'Fetch current user'
  
      type Types::UserType, null: false
  
      def resolve
        raise GraphQL::ExecutionError, 'Missing bearer token' if context[:current_user].nil?

        context[:current_user]
      end
    end
  end
  