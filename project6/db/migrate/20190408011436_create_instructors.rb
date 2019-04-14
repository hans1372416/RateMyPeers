class CreateInstructors < ActiveRecord::Migration[5.2]
  def change
    create_table :instructors do |t|
      t.string :name
      t.string :username
      t.string :course_id
      t.string :group_id

      t.timestamps
    end
  end
end
