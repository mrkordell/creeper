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

ActiveRecord::Schema.define(version: 20130811172057) do

  create_table "events", force: true do |t|
    t.integer  "visitor_id",  null: false
    t.string   "referrer"
    t.string   "current_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "events", ["visitor_id"], name: "index_events_on_visitor_id"

  create_table "sites", force: true do |t|
    t.integer  "owner_id",   null: false
    t.string   "name",       null: false
    t.string   "domain",     null: false
    t.string   "api_key",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sites", ["owner_id"], name: "index_sites_on_owner_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "visitors", force: true do |t|
    t.integer  "site_id",                        null: false
    t.string   "uid",                            null: false
    t.boolean  "is_paid_source", default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "visitors", ["site_id"], name: "index_visitors_on_site_id"

  create_table "visits", force: true do |t|
    t.integer  "visit_id",    null: false
    t.string   "referrer"
    t.string   "gclid"
    t.string   "utm_source"
    t.string   "initial_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "visits", ["visit_id"], name: "index_visits_on_visit_id"

end
