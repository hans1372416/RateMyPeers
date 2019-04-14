class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.string :username
      t.string :gname
      t.string :cname
      t.string :ratings

      t.timestamps
    end
  end
end
