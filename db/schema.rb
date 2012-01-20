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

ActiveRecord::Schema.define(:version => 20120120151913) do

  create_table "services", :force => true do |t|
    t.string   "phone_number"
    t.string   "address"
    t.string   "image_url"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "services_weddings", :id => false, :force => true do |t|
    t.integer "service_id"
    t.integer "wedding_id"
  end

  add_index "services_weddings", ["service_id", "wedding_id"], :name => "index_services_weddings_on_service_id_and_wedding_id"

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "type"
    t.string   "agency_name"
    t.string   "phone_numer"
    t.string   "woman_first_name"
    t.string   "woman_last_name"
    t.string   "man_first_name"
    t.string   "man_last_name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "weddings", :force => true do |t|
    t.integer  "budget"
    t.string   "place"
    t.integer  "nb_person"
    t.integer  "nb_child"
    t.integer  "organizer_id"
    t.integer  "client_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
