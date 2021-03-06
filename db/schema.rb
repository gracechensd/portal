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

ActiveRecord::Schema.define(version: 20130805213008) do

  create_table "projects", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "b_index"
    t.integer  "schedule"
    t.integer  "ret_per"
    t.integer  "status"
  end

  add_index "projects", ["user_id", "created_at"], name: "index_projects_on_user_id_and_created_at"

  create_table "relationships", force: true do |t|
    t.integer  "owner_id"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "relationships", ["owner_id", "project_id"], name: "index_relationships_on_owner_id_and_project_id", unique: true
  add_index "relationships", ["owner_id"], name: "index_relationships_on_owner_id"
  add_index "relationships", ["project_id"], name: "index_relationships_on_project_id"

  create_table "services", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "services", ["name", "created_at"], name: "index_services_on_name_and_created_at"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
