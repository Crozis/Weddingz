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

ActiveRecord::Schema.define(:version => 20120211133727) do

  create_table "active_admin_comments", :force => true do |t|
    t.integer  "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "service_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_url"
  end

  create_table "services", :force => true do |t|
    t.string   "phone_number"
    t.string   "address"
    t.text     "pictures_url"
    t.string   "name"
    t.string   "service_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
    t.string   "front_picture"
    t.text     "price"
  end

  create_table "services_weddings", :force => true do |t|
    t.integer "service_id"
    t.integer "wedding_id"
    t.boolean "activated",  :default => true
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
    t.string   "username"
    t.integer  "wedding_id"
  end

  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "weddings", :force => true do |t|
    t.integer  "budget",     :default => 0
    t.string   "place"
    t.integer  "nb_person",  :default => 0
    t.integer  "nb_child",   :default => 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.boolean  "activated",  :default => false
  end

end
