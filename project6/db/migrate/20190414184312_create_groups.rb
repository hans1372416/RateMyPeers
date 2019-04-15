class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :course_id
      t.string :semester
      t.integer  :user_id
      t.string :member1 
      t.string :member2
      t.string :member3 
      t.string :member4 

      t.timestamps
    end
  end
end
