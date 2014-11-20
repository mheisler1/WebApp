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

ActiveRecord::Schema.define(version: 20141120013207) do

  create_table "job_postings", force: true do |t|
    t.string   "title"
    t.string   "company"
    t.string   "job_type"
    t.string   "salary"
    t.text     "duties"
    t.text     "basic_qualifications"
    t.string   "education"
    t.text     "skills"
    t.string   "experience"
    t.text     "how_to_apply"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
