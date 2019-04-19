class CreateEvaluations < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluations do |t|
      t.boolean :attempt
      t.integer :rater_id
      t.integer :ratee_id
      t.integer :group_id

      t.timestamps
    end
  end
end
