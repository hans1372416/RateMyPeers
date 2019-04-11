class CreateWordResponses < ActiveRecord::Migration[5.2]
  def change
    create_table :word_responses do |t|
      t.integer :q1
      t.integer :q2
      t.integer :q3
      t.integer :q4
      t.integer :q5
      t.string  :groupName
      t.string  :className
      t.string  :Semester
      t.string  :StudentName

      t.timestamps


    end
  end
end
