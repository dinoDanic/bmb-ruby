class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.string :oib, null: false

      t.timestamps
    end
  end
end
