# frozen_string_literal: true

module Types
    class OfficeType < Types::BaseObject
      field :id, ID
      field :name, String
      field :address, String
      field :created_at, GraphQL::Types::ISO8601DateTime
      field :updated_at, GraphQL::Types::ISO8601DateTime
    end
  end
  