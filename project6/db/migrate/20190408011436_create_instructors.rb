class CreateInstructors < ActiveRecord::Migration[5.2]
  def change
    create_table :instructors do |t|
      t.string :name
      t.string :username
      t.string :password
      t.string :class

      t.timestamps
    end
  end
end
