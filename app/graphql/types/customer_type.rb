# frozen_string_literal: true

module Types
    class CustomerType < Types::BaseObject
      field :id, ID
      field :name, String
      field :address, String
      field :oib, String
      field :offices, [Types::OfficeType]
      field :created_at, GraphQL::Types::ISO8601DateTime
      field :updated_at, GraphQL::Types::ISO8601DateTime
    end
  end
  