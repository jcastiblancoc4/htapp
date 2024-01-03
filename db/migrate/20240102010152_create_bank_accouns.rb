class CreateBankAccouns < ActiveRecord::Migration[7.0]
  def change
    create_table :bank_accouns do |t|
      t.string :number
      t.references :bank, null: false, foreign_key: true

      t.timestamps
    end
  end
end
