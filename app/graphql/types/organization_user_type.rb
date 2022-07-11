# frozen_string_literal: true

module Types
    class OrganizationUserType < Types::BaseObject
      field :id, ID
      field :user, Types::UserType
      field :organization, Types::OrganizationType
    end
  end
  