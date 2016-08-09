class CreateFines < ActiveRecord::Migration
  def change
    create_table :fines do |t|
      t.string :idate
      t.string :rdate
      t.integer :charges

      t.timestamps null: false
    end
  end
end
