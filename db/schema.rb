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

ActiveRecord::Schema.define(:version => 20121227143803) do

  create_table "battles", :force => true do |t|
    t.integer  "user_id"
    t.boolean  "turn"
    t.integer  "challenger_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "damage_counter"
    t.integer  "heal_counter"
  end

  create_table "stats", :force => true do |t|
    t.integer  "user_id"
    t.integer  "str"
    t.integer  "dex"
    t.integer  "con"
    t.integer  "intel"
    t.integer  "wis"
    t.integer  "cha"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "avatar"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "stat_id"
    t.integer  "vital_id"
  end

  create_table "vitals", :force => true do |t|
    t.integer  "user_id"
    t.integer  "hp"
    t.integer  "mp"
    t.integer  "sp"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
