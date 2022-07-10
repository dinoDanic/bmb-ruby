# frozen_string_literal: true

module Types
    class UserType < Types::BaseObject
      field :id, ID
      field :email, String
      field :created_at, GraphQL::Types::ISO8601DateTime
      field :updated_at, GraphQL::Types::ISO8601DateTime
    end
  end
  