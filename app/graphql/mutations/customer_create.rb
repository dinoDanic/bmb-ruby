# frozen_string_literal: true

module Mutations
    class CustomerCreate < BaseMutation
      description "Creates a new customer"
  
      argument :name, String, required: true
      argument :address, String, required: true
      argument :oib, String, required: true
      argument :organization_id, String, required: true
  
      type Types::CustomerType
  
      def resolve(name:, address:, oib:, organization_id:)
        raise GraphQL::ExecutionError, 'Missing bearer token' if context[:current_user].nil?
        customer = Customer.create(name: name, address: address, oib: oib)
        

        oc = OrganizationCustomer.create(organization_id: organization_id, customer_id: customer.id)

        customer
      end
  
    end
  end
  