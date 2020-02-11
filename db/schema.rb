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

ActiveRecord::Schema.define(version: 4) do

  create_table "garden_plants", force: :cascade do |t|
    t.integer "garden_id"
    t.integer "plant_id"
  end

  create_table "gardens", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.integer "user_id"
  end

  create_table "plants", force: :cascade do |t|
    t.string "tfvname"
    t.string "botname"
    t.string "othname"
    t.string "image_url"
    t.string "description"
    t.string "uses"
    t.string "health"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.string "bio"
    t.string "country"
  end
end
