# frozen_string_literal: true

module Mutations
    class OfficeCreate < BaseMutation
      description "Creates a new office"
  
      argument :name, String, required: true
      argument :address, String, required: true
      argument :customer_id, String, required: true
  
      type Types::OfficeType
  
      def resolve(name:, address:, customer_id:)
        raise GraphQL::ExecutionError, 'Missing bearer token' if context[:current_user].nil?
        office = Office.create(name: name, address: address)
        

        oc = CustomerOfficeJoin.create(customer_id: customer_id, office_id: office.id)

        office
      end
  
    end
  end
  