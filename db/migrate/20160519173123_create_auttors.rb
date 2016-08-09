class CreateAuttors < ActiveRecord::Migration
  def change
    create_table :auttors do |t|
      t.integer :authorid
      t.string :authorname

      t.timestamps null: false
    end
  end
end
