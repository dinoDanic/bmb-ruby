class OrganizationUserJoin < ApplicationRecord
    belongs_to :user, foreign_key: :user_id
    belongs_to :organization, foreign_key: :organization_id
end
  