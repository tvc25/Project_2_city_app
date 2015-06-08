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

ActiveRecord::Schema.define(version: 20150608111710) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "image"
    t.string   "price"
    t.string   "people_like_it"
    t.integer  "city_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "activities", ["city_id"], name: "index_activities_on_city_id", using: :btree

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.string   "image"
    t.integer  "population"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recommendations", force: :cascade do |t|
    t.string   "user"
    t.string   "place"
    t.string   "activity"
    t.string   "description"
    t.string   "image"
    t.integer  "city_id"
    t.integer  "activity_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "recommendations", ["activity_id"], name: "index_recommendations_on_activity_id", using: :btree
  add_index "recommendations", ["city_id"], name: "index_recommendations_on_city_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "likes"
    t.string   "dislikes"
    t.integer  "city_id"
    t.integer  "recommendation_id"
    t.integer  "activity_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "users", ["activity_id"], name: "index_users_on_activity_id", using: :btree
  add_index "users", ["city_id"], name: "index_users_on_city_id", using: :btree
  add_index "users", ["recommendation_id"], name: "index_users_on_recommendation_id", using: :btree

  add_foreign_key "activities", "cities"
  add_foreign_key "recommendations", "activities"
  add_foreign_key "recommendations", "cities"
  add_foreign_key "users", "activities"
  add_foreign_key "users", "cities"
  add_foreign_key "users", "recommendations"
end
