class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :gname
      t.string :course_id
  
      t.timestamps
    end
  end
end
