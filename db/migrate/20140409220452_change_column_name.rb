class ChangeColumnName < ActiveRecord::Migration
  def up
    rename_column :events, :dateTime, :start
    rename_column :events, :duration, :end
    rename_column :events, :name, :title
  end

  def down
  end
end
