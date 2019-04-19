class AddAttemptToRatings < ActiveRecord::Migration[5.2]
  def change
	add_column :ratings, :attempt, :boolean
  end
end
