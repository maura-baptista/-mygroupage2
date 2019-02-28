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

ActiveRecord::Schema.define(version: 2019_02_26_165059) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "alerts", force: :cascade do |t|
    t.string "alert_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "origin"
    t.string "destination"
    t.string "departure_date"
    t.string "move_size"
  end

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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

  create_table "flats", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "latitude"
    t.float "longitude"
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
    t.float "destination_latitude"
    t.float "destination_longitude"
    t.index ["container_id"], name: "index_groupages_on_container_id"
    t.index ["user_id"], name: "index_groupages_on_user_id"
  end

  create_table "lists", force: :cascade do |t|
    t.string "lead_origin"
    t.string "lead_destination"
    t.string "lead_date"
    t.string "lead_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "lead_origin_lat"
    t.float "lead_origin_long"
    t.float "lead_destination_lat"
    t.float "lead_destination_long"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.boolean "agreement"
    t.boolean "newsletter"
    t.string "provider"
    t.string "uid"
    t.string "facebook_picture_url"
    t.string "token"
    t.datetime "token_expiry"
    t.boolean "admin", default: false, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "containers", "users"
  add_foreign_key "groupages", "containers"
  add_foreign_key "groupages", "users"
end
