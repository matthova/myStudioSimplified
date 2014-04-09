class CreateSpaces < ActiveRecord::Migration
  def change
    create_table :spaces do |t|
      t.string :name
      t.integer :size
      t.string :description
      t.integer :hourly_rate

      t.timestamps
    end
  end
end
