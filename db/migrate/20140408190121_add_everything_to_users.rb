class AddEverythingToUsers < ActiveRecord::Migration
  def change
    add_column :users, :email, :string
    add_column :users, :fname, :string
    add_column :users, :lname, :string
    add_column :users, :phone, :string
    add_column :users, :description, :string
    add_column :users, :studio_admin, :boolean
    add_column :users, :studio_owner, :boolean
    add_column :users, :hourly_rate, :integer
  end
end
