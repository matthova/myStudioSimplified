class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :fname
      t.string :lname
      t.string :phone
      t.string :description
      t.boolean :studio_admin
      t.boolean :studio_owner
      t.integer :hourly_rate
      t.string :password_digest

      t.timestamps
    end
  end
end
