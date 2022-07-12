class Customer < ApplicationRecord
    has_many :customer_office_join, foreign_key: :customer_id
    has_many :offices, through: :customer_office_join

    has_many :organization_customers, foreign_key: :customer_id
    has_many :organizations, through: :organization_customers
end
  