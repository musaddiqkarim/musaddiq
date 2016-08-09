class CreateBorrows < ActiveRecord::Migration
  def change
    create_table :borrows do |t|
      t.string :bmemeber
      t.string :bbook
      t.integer :bfine
      t.references :book, index: true
      t.references :member, index: true
      t.references :fine, index: true

      t.timestamps null: false
    end
    add_foreign_key :borrows, :books
    add_foreign_key :borrows, :members
    add_foreign_key :borrows, :fines
  end
end
