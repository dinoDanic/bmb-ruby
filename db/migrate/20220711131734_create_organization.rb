class CreateOrganization < ActiveRecord::Migration[7.0]
  def change
    create_table :organizations do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.string :oib, null: false

      t.timestamps

      t.belongs_to :user,  foreign_key: true

    end
  end
end
