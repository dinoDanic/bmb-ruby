class Organization < ApplicationRecord
    has_many :organization_user_join, foreign_key: :organization_id
end
  