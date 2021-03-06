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

ActiveRecord::Schema.define(version: 2021_08_03_121115) do

  create_table "addresses", force: :cascade do |t|
    t.string "name"
    t.string "street"
    t.integer "postalCode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.string "Firstname"
  end

  create_table "items", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "photo_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "price"
    t.string "photo_url3"
    t.string "photo_url2"
    t.string "size"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "number"
    t.string "name"
    t.string "firstname"
    t.string "email"
    t.string "street"
    t.integer "postalCode"
    t.string "city"
    t.string "purchase"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "total"
  end

end
