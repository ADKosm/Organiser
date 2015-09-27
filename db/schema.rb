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

ActiveRecord::Schema.define(version: 20150922193652) do

  create_table "disciplines", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.date     "time_beg"
    t.date     "time_end"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lessons", force: true do |t|
    t.string   "name"
    t.integer  "kind"
    t.integer  "discipline_id"
    t.integer  "day"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lessons", ["discipline_id"], name: "index_lessons_on_discipline_id"

  create_table "tasks", force: true do |t|
    t.string   "description"
    t.string   "name"
    t.integer  "raiting"
    t.date     "deadline"
    t.integer  "discipline_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ready",         default: 0
  end

  add_index "tasks", ["discipline_id"], name: "index_tasks_on_discipline_id"

end
