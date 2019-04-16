class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
    	t.integer :group_id
    	t.integer :rater_id
    	t.integer :ratee_id
    	t.integer :score
    	t.string :comments

      t.timestamps
    end
  end
end
