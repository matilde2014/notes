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

ActiveRecord::Schema.define(version: 20170122175312) do

  create_table "evaluable_items", force: true do |t|
    t.string   "name"
    t.text     "remarks"
    t.integer  "subject_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "weight",     default: 0.0
  end

  create_table "marks", force: true do |t|
    t.float    "value"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "student_id"
    t.integer  "evaluable_item_id"
  end

  create_table "students", force: true do |t|
    t.string   "name"
    t.date     "birthday"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nif"
    t.integer  "user_id",        null: false
    t.string   "address"
    t.string   "phone"
    t.string   "email"
    t.string   "guardian_name"
    t.string   "guardian_phone"
    t.string   "guardian_email"
    t.string   "former_studies"
    t.string   "access_mode"
    t.text     "remarks"
    t.string   "image"
  end

  create_table "students_subjects", id: false, force: true do |t|
    t.integer "student_id", null: false
    t.integer "subject_id", null: false
  end

  create_table "subjects", force: true do |t|
    t.string   "name"
    t.integer  "hours"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id",    null: false
    t.text     "remarks"
    t.string   "course"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
