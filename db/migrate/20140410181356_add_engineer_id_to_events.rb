class AddEngineerIdToEvents < ActiveRecord::Migration
  def change
    add_column :events, :engineer_id, :integer
  end
end
