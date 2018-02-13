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

ActiveRecord::Schema.define(version: 20180213140749) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "connections", force: :cascade do |t|
    t.string "name"
    t.string "name_db"
    t.string "username_db"
    t.string "password_db"
    t.string "host_db"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "merge_locals", force: :cascade do |t|
    t.integer "c_local_id"
    t.integer "prov_local_id"
    t.bigint "merge_restaurant_id"
    t.string "restaurant_token"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["merge_restaurant_id"], name: "index_merge_locals_on_merge_restaurant_id"
  end

  create_table "merge_restaurants", force: :cascade do |t|
    t.string "restaurant_key"
    t.bigint "connection_id"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["connection_id"], name: "index_merge_restaurants_on_connection_id"
  end

  create_table "prov_merge_rests", force: :cascade do |t|
    t.bigint "provider_id"
    t.bigint "merge_restaurant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["merge_restaurant_id"], name: "index_prov_merge_rests_on_merge_restaurant_id"
    t.index ["provider_id"], name: "index_prov_merge_rests_on_provider_id"
  end

  create_table "providers", force: :cascade do |t|
    t.string "server_key"
    t.string "ref"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "merge_locals", "merge_restaurants"
  add_foreign_key "merge_restaurants", "connections"
  add_foreign_key "prov_merge_rests", "merge_restaurants"
  add_foreign_key "prov_merge_rests", "providers"
end
