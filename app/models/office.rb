class Office < ApplicationRecord
    has_many :customer_office_join, foreign_key: :customer_id
    has_many :customers, through: :customer_office_join
  end
  