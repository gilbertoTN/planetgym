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

ActiveRecord::Schema.define(:version => 20140108212141) do

  create_table "partners", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "colony"
    t.date     "entry"
    t.string   "sex"
    t.date     "birthday"
    t.string   "phone"
    t.string   "background"
    t.string   "observations"
    t.string   "email"
    t.string   "link"
    t.string   "image"
    t.string   "provider"
    t.string   "uid"
    t.boolean  "active"
    t.boolean  "publish"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
    t.integer  "number_partner"
    t.boolean  "status",         :default => false
  end

  create_table "users", :force => true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

end
