class CreateMemberships < ActiveRecord::Migration[5.2]
  def change
    create_table :memberships do |t|
      t.integer :user_id
      t.integer :group_id
      t.string :q1
      t.string :q2
      t.string :q3
      t.string :q4
    

      t.timestamps
    end
  end
end
