# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_09_09_201941) do

  create_table "diaries", force: :cascade do |t|
    t.string "shipname"
    t.string "password"
    t.string "person1"
    t.string "person2"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "entries", force: :cascade do |t|
    t.datetime "date"
    t.string "title"
    t.string "description"
    t.integer "picture_id", null: false
    t.integer "diary_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["diary_id"], name: "index_entries_on_diary_id"
    t.index ["picture_id"], name: "index_entries_on_picture_id"
  end

  create_table "pictures", force: :cascade do |t|
    t.datetime "date"
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "entries", "diaries"
  add_foreign_key "entries", "pictures"
end
