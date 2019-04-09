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

ActiveRecord::Schema.define(version: 2019_04_09_171003) do

  create_table "instructors", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password"
    t.string "class"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

  create_table "ratings", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password"
    t.string "groupName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

  create_table "welcomes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "word_responses", force: :cascade do |t|
    t.boolean "q1"
    t.boolean "q2"
    t.boolean "q3"
    t.boolean "q4"
    t.boolean "q5"
    t.string "groupName"
    t.string "className"
    t.string "Semester"
    t.string "StudentName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
