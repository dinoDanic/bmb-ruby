# frozen_string_literal: true

module Mutations
    class OrganizationCreate < BaseMutation
      description "Creates a new organization"
  
      argument :name, String, required: true
      argument :address, String, required: true
      argument :oib, String, required: true
  
      type Types::OrganizationType
  
      def resolve(name:, address:, oib:)
        raise GraphQL::ExecutionError, 'Missing bearer token' if context[:current_user].nil?
        organization = Organization.create(name: name, address: address, oib: oib, user_id: context[:current_user].id)
        
      end
  
    end
  end
  