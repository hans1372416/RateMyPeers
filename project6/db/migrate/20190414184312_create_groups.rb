class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :course_id
      t.string :semester
      t.integer  :user_id

      t.timestamps
    end
  end
end
