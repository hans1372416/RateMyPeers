class AddEvalIdToRatings < ActiveRecord::Migration[5.2]
  def change
	add_column :ratings, :eval_id, :integer
  end
end
