class CreateSuppliers < ActiveRecord::Migration[7.0]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :nit
      t.string :name_person_contact
      t.string :phone_person_contact
      t.references :accoun, null: false,  foreign_key: { to_table: :bank_accouns }

      t.timestamps
    end
  end
end
