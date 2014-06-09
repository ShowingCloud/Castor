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

ActiveRecord::Schema.define(version: 20140607115808) do

  create_table "adresses", force: true do |t|
    t.string   "adress"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "areas", force: true do |t|
    t.string   "area"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "departments", force: true do |t|
    t.string   "department"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "emails", force: true do |t|
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "faxes", force: true do |t|
    t.string   "fax"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ims", force: true do |t|
    t.string   "im"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "is_interns", force: true do |t|
    t.boolean  "is_intern"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mobiles", force: true do |t|
    t.string   "mobile"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "positions", force: true do |t|
    t.string   "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subjections", force: true do |t|
    t.string   "subjection"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tels", force: true do |t|
    t.string   "tel"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_verifications", force: true do |t|
    t.string   "name"
    t.date     "birthday"
    t.boolean  "is_intern"
    t.string   "mobile"
    t.boolean  "gender"
    t.string   "email"
    t.string   "department"
    t.string   "position"
    t.string   "area"
    t.string   "subjection"
    t.string   "tel"
    t.string   "fax"
    t.string   "im"
    t.string   "id_card"
    t.string   "adress"
    t.string   "postcode"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.date     "birthday"
    t.boolean  "is_intern"
    t.string   "mobile"
    t.boolean  "gender"
    t.string   "email"
    t.string   "department"
    t.string   "position"
    t.string   "area"
    t.string   "subjection"
    t.string   "tel"
    t.string   "fax"
    t.string   "im"
    t.string   "id_card"
    t.string   "adress"
    t.string   "postcode"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar"
  end

end
