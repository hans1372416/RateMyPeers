class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :gname
      t.string :cname
      t.string :semester

      t.timestamps
    end
  end
end
