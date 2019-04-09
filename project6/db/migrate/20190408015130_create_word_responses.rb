class CreateWordResponses < ActiveRecord::Migration[5.2]
  def change
    create_table :word_responses do |t|
      t.boolean :q1
      t.boolean :q2
      t.boolean :q3
      t.boolean :q4
      t.boolean :q5
      t.string  :groupName
      t.string  :className
      t.string  :Semester
      t.string  :StudentName

      t.timestamps


    end
  end
end
