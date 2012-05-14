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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120514073414) do

  create_table "address_cats", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "addresses", :force => true do |t|
    t.string   "company"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "street"
    t.string   "zip"
    t.string   "city"
    t.string   "country"
    t.string   "phone"
    t.string   "mobile"
    t.string   "mail"
    t.string   "web"
    t.integer  "AddressCat_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "addresses", ["AddressCat_id"], :name => "index_addresses_on_AddressCat_id"

  create_table "dogs", :force => true do |t|
    t.string   "name"
    t.string   "breed"
    t.integer  "height"
    t.date     "dob"
    t.date     "dod"
    t.integer  "Gender_id"
    t.integer  "Nutered_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "Breeder_id"
    t.float    "weight"
  end

  add_index "dogs", ["Gender_id"], :name => "index_dogs_on_Gender_id"
  add_index "dogs", ["Nutered_id"], :name => "index_dogs_on_Nutered_id"

  create_table "genders", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "nutereds", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
