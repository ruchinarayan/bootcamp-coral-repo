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

ActiveRecord::Schema.define(version: 20150302171532) do

  create_table "movies", force: :cascade do |t|
    t.string   "title"
    t.integer  "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "person_id"
    t.integer  "studio_id"
  end

  add_index "movies", ["person_id"], name: "index_movies_on_person_id"
  add_index "movies", ["studio_id"], name: "index_movies_on_studio_id"

  create_table "people", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.date     "dob"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "stars"
    t.string   "title"
    t.string   "commentary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "review_id"
    t.integer  "person_id"
  end

  add_index "reviews", ["person_id"], name: "index_reviews_on_person_id"
  add_index "reviews", ["review_id"], name: "index_reviews_on_review_id"

  create_table "studios", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "theater_id"
  end

  add_index "studios", ["theater_id"], name: "index_studios_on_theater_id"

  create_table "theaters", force: :cascade do |t|
    t.string   "theater_name"
    t.string   "theater_address"
    t.string   "theater_phone"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
