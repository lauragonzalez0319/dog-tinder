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

ActiveRecord::Schema.define(version: 2022_09_15_214621) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "decisions", force: :cascade do |t|
    t.integer "decision_maker_id"
    t.integer "decision_receiver_id"
    t.boolean "approved"
    t.boolean "active"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "dog_profiles", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name"
    t.string "image_url"
    t.string "bio"
    t.string "sex"
    t.integer "age"
    t.string "location"
    t.string "breed"
    t.string "size"
    t.string "looking_for"
    t.boolean "has_kids"
    t.boolean "wants_kids"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_dog_profiles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "dog_profiles", "users"
end
