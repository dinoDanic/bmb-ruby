class Customer < ApplicationRecord
    has_many :customer_office_join, foreign_key: :customer_id
    has_many :offices, through: :customer_office_join
end
  