class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.integer :memberid
      t.string :membername

      t.timestamps null: false
    end
  end
end
