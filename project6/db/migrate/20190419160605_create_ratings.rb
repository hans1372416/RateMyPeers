class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
    
    t.integer :group_id
    t.float :score
    t.string :comments
    t.datetime :created_at
    t.datetime :updated_at
    t.integer :eval_id
    t.integer :user_id
      t.timestamps
     end
  end
end

