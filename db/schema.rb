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

ActiveRecord::Schema.define(version: 20140908145640) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "languages", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pairings", force: true do |t|
    t.integer  "user_id",                 null: false
    t.integer  "partner_id",              null: false
    t.string   "message"
    t.string   "status",     default: "", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pairings", ["partner_id"], name: "index_pairings_on_partner_id", using: :btree
  add_index "pairings", ["user_id", "partner_id"], name: "index_pairings_on_user_id_and_partner_id", using: :btree
  add_index "pairings", ["user_id"], name: "index_pairings_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name",                   default: "",    null: false
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "location"
    t.boolean  "admin",                  default: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["location"], name: "index_users_on_location", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "users_languages", force: true do |t|
    t.integer  "user_id"
    t.integer  "language_id"
    t.string   "level"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users_languages", ["language_id"], name: "index_users_languages_on_language_id", using: :btree
  add_index "users_languages", ["user_id", "language_id"], name: "index_users_languages_on_user_id_and_language_id", using: :btree
  add_index "users_languages", ["user_id"], name: "index_users_languages_on_user_id", using: :btree

end
