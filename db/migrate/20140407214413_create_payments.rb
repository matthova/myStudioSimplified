class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :amount
      t.string :description

      t.timestamps
    end
  end
end
