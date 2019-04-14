class CreateWordResponses < ActiveRecord::Migration[5.2]
  def change
    create_table :word_responses do |t|
      t.string :q1
      t.string :q2
      t.string :q3
      t.integer :q4
      t.integer :q5
      t.integer  :group_id
      t.integer  :course_id
      t.string  :semester
      t.integer  :user_id

      t.timestamps


    end
  end
end
