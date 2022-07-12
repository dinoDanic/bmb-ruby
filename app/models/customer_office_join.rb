class CustomerOfficeJoin < ApplicationRecord
    belongs_to :customer, foreign_key: :customer_id
    belongs_to :office, foreign_key: :office_id
end
  