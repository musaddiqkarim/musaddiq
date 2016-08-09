# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160608204359) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "auttors", force: :cascade do |t|
    t.integer  "authorid"
    t.string   "authorname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.integer  "bookid"
    t.string   "title"
    t.string   "edition"
    t.string   "auther"
    t.string   "publisher"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "borrows", force: :cascade do |t|
    t.string   "bmemeber"
    t.string   "bbook"
    t.integer  "bfine"
    t.integer  "book_id"
    t.integer  "member_id"
    t.integer  "fine_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "borrows", ["book_id"], name: "index_borrows_on_book_id", using: :btree
  add_index "borrows", ["fine_id"], name: "index_borrows_on_fine_id", using: :btree
  add_index "borrows", ["member_id"], name: "index_borrows_on_member_id", using: :btree

  create_table "controllers", force: :cascade do |t|
    t.string   "AcountActivation"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "fines", force: :cascade do |t|
    t.string   "idate"
    t.string   "rdate"
    t.integer  "charges"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "logins", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", force: :cascade do |t|
    t.integer  "memberid"
    t.string   "membername"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "publishers", force: :cascade do |t|
    t.integer  "publisherid"
    t.string   "publishername"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.string   "new"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "activation_digest"
    t.boolean  "activated",              default: false
    t.datetime "activated_at"
    t.string   "auth_token"
    t.string   "password_reset_token"
    t.datetime "password_reset_sent_at"
  end

  create_table "welcomes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "borrows", "books"
  add_foreign_key "borrows", "fines"
  add_foreign_key "borrows", "members"
end
