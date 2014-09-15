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

ActiveRecord::Schema.define(version: 20140915153617) do

  create_table "assigned_owners", force: true do |t|
    t.integer  "tasks_id"
    t.integer  "owner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "assigned_owners", ["tasks_id"], name: "index_assigned_owners_on_tasks_id", using: :btree

  create_table "assigned_tasks", force: true do |t|
    t.integer  "owner_id"
    t.integer  "task_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "assigned_tasks", ["owner_id"], name: "index_assigned_tasks_on_owner_id", using: :btree

  create_table "coffee_shops", force: true do |t|
    t.string   "name"
    t.string   "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.integer  "task_id"
    t.string   "body"
    t.string   "commenter"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["task_id"], name: "index_comments_on_task_id", using: :btree

  create_table "favorites", force: true do |t|
    t.integer  "owner_id"
    t.string   "last_visit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "favorites", ["owner_id"], name: "index_favorites_on_owner_id", using: :btree

  create_table "owners", force: true do |t|
    t.integer  "task_id"
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
  end

  add_index "owners", ["remember_token"], name: "index_owners_on_remember_token", using: :btree
  add_index "owners", ["task_id"], name: "index_owners_on_task_id", using: :btree

  create_table "projects", force: true do |t|
    t.integer  "owner_id"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "projects", ["owner_id"], name: "index_projects_on_owner_id", using: :btree

  create_table "shared_projects", force: true do |t|
    t.integer  "owner_id"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "shared_projects", ["owner_id"], name: "index_shared_projects_on_owner_id", using: :btree

  create_table "shared_projects_owners", id: false, force: true do |t|
    t.integer "shared_project_id"
    t.integer "owner_id"
  end

  create_table "task_lists", force: true do |t|
    t.string   "name"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "task_lists", ["project_id"], name: "index_task_lists_on_project_id", using: :btree

  create_table "tasks", force: true do |t|
    t.integer  "tasklist_id"
    t.integer  "favorite_id"
    t.integer  "priority"
    t.string   "title"
    t.string   "due"
    t.string   "due_repeat"
    t.string   "reminder"
    t.string   "notes"
    t.integer  "status"
    t.string   "location"
    t.integer  "duration"
    t.string   "type"
    t.string   "timeframe"
    t.string   "category"
    t.integer  "regular_fav"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tasks", ["favorite_id"], name: "index_tasks_on_favorite_id", using: :btree
  add_index "tasks", ["tasklist_id"], name: "index_tasks_on_tasklist_id", using: :btree

end
