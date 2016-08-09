class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.integer :bookid
      t.string :title
      t.string :edition
      t.string :auther
      t.string :publisher

      t.timestamps null: false
    end
  end
end
