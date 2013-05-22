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

ActiveRecord::Schema.define(:version => 20130522162558) do

  create_table "users", :force => true do |t|
    t.string   "login",                                                          :null => false
    t.string   "email",                                                          :null => false
    t.string   "crypted_password",                                               :null => false
    t.string   "password_salt",                                                  :null => false
    t.string   "persistence_token",                                              :null => false
    t.string   "single_access_token",                                            :null => false
    t.string   "perishable_token",                                               :null => false
    t.integer  "login_count",                               :default => 0,       :null => false
    t.integer  "failed_login_count",                        :default => 0,       :null => false
    t.datetime "last_request_at",              :limit => 6
    t.datetime "current_login_at",             :limit => 6
    t.datetime "last_login_at",                :limit => 6
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.string   "facebook_id"
    t.string   "facebook_name"
    t.string   "facebook_first_name"
    t.string   "facebook_last_name"
    t.date     "facebook_birthday"
    t.string   "facebook_gender"
    t.string   "facebook_middle_name"
    t.string   "facebook_link"
    t.text     "facebook_bio"
    t.string   "facebook_religious_views"
    t.string   "facebook_political_views"
    t.integer  "facebook_timezone",                         :default => 0
    t.string   "facebook_locale",                           :default => "en_US"
    t.integer  "facebook_location_id"
    t.boolean  "active",                                    :default => false,   :null => false
    t.datetime "created_at",                                                     :null => false
    t.datetime "updated_at",                                                     :null => false
    t.string   "facebook_login"
    t.string   "facebook_email"
    t.integer  "facebook_login_count"
    t.integer  "google_login_count"
    t.string   "google_email"
    t.string   "google_id"
    t.string   "google_object_type"
    t.string   "google_name"
    t.string   "google_display_name"
    t.string   "google_name_formatted"
    t.string   "google_name_family_name"
    t.string   "google_name_given_name"
    t.string   "google_name_middle_name"
    t.string   "google_name_honorific_prefix"
    t.string   "google_name_honorific_suffix"
    t.string   "google_nickname"
    t.date     "google_birthday"
    t.string   "google_gender"
    t.string   "google_location_id"
    t.string   "google_url"
    t.string   "google_image_url"
    t.string   "google_about_me"
    t.string   "google_relationship_status"
    t.string   "google_tag_line"
    t.integer  "google_locale"
  end

end
