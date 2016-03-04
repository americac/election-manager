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

ActiveRecord::Schema.define(version: 20160304221030) do

  create_table "elections", force: true do |t|
    t.string   "title",                          null: false
    t.text     "description"
    t.string   "contact",                        null: false
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.integer  "user_id",                        null: false
    t.string   "update_by",   default: "nobody", null: false
    t.datetime "start",                          null: false
    t.datetime "finish",                         null: false
  end

  add_index "elections", ["user_id"], name: "index_elections_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "lname",                              null: false
    t.string   "fname",                              null: false
    t.string   "netid",                              null: false
    t.string   "encrypted_password"
    t.string   "salt"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.boolean  "global_admin",       default: false
  end

end
