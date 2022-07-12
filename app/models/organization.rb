class Organization < ApplicationRecord
    has_many :organization_user_join, foreign_key: :organization_id
    has_many :users, through: :organization_user_join


    has_many :organization_customers, foreign_key: :organization_id
    has_many :customers, through: :organization_customers
end
  