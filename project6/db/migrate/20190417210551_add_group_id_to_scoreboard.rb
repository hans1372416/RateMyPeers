class AddGroupIdToScoreboard < ActiveRecord::Migration[5.2]
  def change
	add_column :scoreboards, :group_id, :integer
  end
end
