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

ActiveRecord::Schema.define(version: 20160402114309) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authors", force: :cascade do |t|
    t.string   "given_name",     limit: 50,   null: false
    t.string   "surname",        limit: 50,   null: false
    t.string   "patronymic",     limit: 50
    t.date     "birthday_start",              null: false
    t.date     "birthday_end",                null: false
    t.string   "description",    limit: 4000
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "books", force: :cascade do |t|
    t.string   "name",        limit: 50,   null: false
    t.date     "written_at",               null: false
    t.string   "description", limit: 4000
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "books_authors", id: false, force: :cascade do |t|
    t.integer "book_id",   null: false
    t.integer "author_id", null: false
  end

  add_index "books_authors", ["book_id", "author_id"], name: "index_books_authors_on_book_id_and_author_id", unique: true, using: :btree

  create_table "books_genres", id: false, force: :cascade do |t|
    t.integer "book_id",  null: false
    t.integer "genre_id", null: false
  end

  add_index "books_genres", ["book_id", "genre_id"], name: "index_books_genres_on_book_id_and_genre_id", unique: true, using: :btree

  create_table "genres", force: :cascade do |t|
    t.string "name", null: false
  end

  add_index "genres", ["name"], name: "index_genres_on_name", unique: true, using: :btree

  add_foreign_key "books_authors", "authors", on_delete: :cascade
  add_foreign_key "books_authors", "books", on_delete: :cascade
  add_foreign_key "books_genres", "books", on_delete: :cascade
  add_foreign_key "books_genres", "genres", on_delete: :cascade
end
