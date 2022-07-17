# frozen_string_literal: true

module Types
    class OrganizationType < Types::BaseObject
      field :id, ID
      field :name, String
      field :address, String
      field :oib, String
      field :active, Boolean
      field :customers, [Types::CustomerType]

      field :created_at, GraphQL::Types::ISO8601DateTime
      field :updated_at, GraphQL::Types::ISO8601DateTime
    end
  end
  