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

ActiveRecord::Schema.define(version: 20151119060423) do

  create_table "items", force: :cascade do |t|
    t.integer  "parent_id",  null: false
    t.string   "subject",    null: false
    t.text     "body"
    t.string   "type",       null: false
    t.integer  "priority",   null: false
    t.integer  "created_by", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "items", ["type"], name: "index_items_on_type"

  create_table "members", force: :cascade do |t|
    t.integer  "item_id",                    null: false
    t.integer  "user_id",                    null: false
    t.boolean  "is_owner",   default: false, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "members", ["item_id"], name: "index_members_on_item_id"
  add_index "members", ["user_id"], name: "index_members_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "provider",    null: false
    t.string   "uid",         null: false
    t.string   "nickname",    null: false
    t.string   "email"
    t.string   "name"
    t.string   "url"
    t.string   "avatar_url"
    t.string   "gravatar_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
