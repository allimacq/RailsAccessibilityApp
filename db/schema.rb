# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_06_16_135444) do

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.integer "state_id", null: false
    t.string "zipcode"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["state_id"], name: "index_cities_on_state_id"
  end

  create_table "parks", force: :cascade do |t|
    t.string "name"
    t.integer "city_id", null: false
    t.integer "state_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_id"], name: "index_parks_on_city_id"
    t.index ["state_id"], name: "index_parks_on_state_id"
    t.index ["user_id"], name: "index_parks_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "title"
    t.text "review"
    t.integer "rating"
    t.string "accessible"
    t.integer "activity_id", null: false
    t.integer "park_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["activity_id"], name: "index_reviews_on_activity_id"
    t.index ["park_id"], name: "index_reviews_on_park_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.string "abbreviation"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "cities", "states"
  add_foreign_key "parks", "cities"
  add_foreign_key "parks", "states"
  add_foreign_key "parks", "users"
  add_foreign_key "reviews", "activities"
  add_foreign_key "reviews", "parks"
  add_foreign_key "reviews", "users"
end
