class DropColumnsFromRatings < ActiveRecord::Migration[5.2]
  def change
	remove_column :ratings, :rater_id
	remove_column :ratings, :ratee_id
	remove_column :ratings, :attempt
  end
end
