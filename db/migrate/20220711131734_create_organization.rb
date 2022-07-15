class CreateOrganization < ActiveRecord::Migration[7.0]
  def change
    create_table :organizations do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.string :oib, null: false, unique: true
      t.boolean :active, null: false, default: true

      t.timestamps
    end
  end
end
