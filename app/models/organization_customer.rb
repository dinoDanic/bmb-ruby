class OrganizationCustomer < ApplicationRecord
    belongs_to :customer, foreign_key: :customer_id
    belongs_to :organization, foreign_key: :organization_id
end
  