class CreateCustomerOfficeJoins < ActiveRecord::Migration[7.0]
  def change
    create_table :customer_office_joins do |t|
      t.references :customer, null: false, foreign_key: true
      t.references :office, null: false, foreign_key: true

      t.timestamps
    end
  end
end
