class AddSpaceIdToEvents < ActiveRecord::Migration
  def change
    add_column :events, :space_id, :integer
  end
end
