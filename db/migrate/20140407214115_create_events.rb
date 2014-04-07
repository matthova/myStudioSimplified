class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :dateTime
      t.integer :duration
      t.string :description
      t.integer :created_by

      t.timestamps
    end
  end
end
