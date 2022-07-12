class CreateOrganizationCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :organization_customers do |t|
      t.references :organization, null: false, foreign_key: true
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
