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

ActiveRecord::Schema.define(version: 2019_01_22_165532) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "containers", force: :cascade do |t|
    t.integer "volume"
    t.integer "price"
    t.string "container_size"
    t.string "metrics"
    t.string "currency"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_containers_on_user_id"
  end

  create_table "groupages", force: :cascade do |t|
    t.string "origin"
    t.string "destination"
    t.string "departure_date"
    t.string "mover"
    t.string "notification_email"
    t.integer "phone_number"
    t.bigint "user_id"
    t.bigint "container_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "phone_prefix"
    t.float "latitude"
    t.float "longitude"
    t.index ["container_id"], name: "index_groupages_on_container_id"
    t.index ["user_id"], name: "index_groupages_on_user_id"
  end

  create_table "user_savings", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "saving_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["saving_id"], name: "index_user_savings_on_saving_id"
    t.index ["user_id"], name: "index_user_savings_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "containers", "users"
  add_foreign_key "groupages", "containers"
  add_foreign_key "groupages", "users"
  add_foreign_key "user_savings", "containers", column: "saving_id"
  add_foreign_key "user_savings", "users"
end
