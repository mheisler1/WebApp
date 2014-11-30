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

ActiveRecord::Schema.define(version: 20141130040455) do

  create_table "admins", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email"
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token"

  create_table "job_postings", force: true do |t|
    t.string   "title"
    t.string   "company"
    t.string   "salary"
    t.text     "duties"
    t.text     "basic_qualifications"
    t.text     "education",            limit: 255
    t.text     "skills"
    t.text     "how_to_apply"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "approved",                         default: false
    t.integer  "job_type_id"
    t.integer  "pay_type_id"
    t.integer  "location_type_id"
  end

  add_index "job_postings", ["job_type_id"], name: "index_job_postings_on_job_type_id"
  add_index "job_postings", ["location_type_id"], name: "index_job_postings_on_location_type_id"
  add_index "job_postings", ["pay_type_id"], name: "index_job_postings_on_pay_type_id"

  create_table "job_types", force: true do |t|
    t.string   "job_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "location_types", force: true do |t|
    t.string   "location_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pay_types", force: true do |t|
    t.string   "pay_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
