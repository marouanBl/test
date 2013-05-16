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

ActiveRecord::Schema.define(:version => 20130504085353) do

  create_table "answers", :force => true do |t|
    t.text     "content"
    t.boolean  "featured"
    t.integer  "question_id"
    t.integer  "user_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "backers", :force => true do |t|
    t.integer  "project_id"
    t.integer  "user_id"
    t.integer  "value"
    t.datetime "confirmed_at"
    t.boolean  "finished"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "newsomme"
  end

  create_table "businessplans", :force => true do |t|
    t.text     "wizard_question"
    t.text     "wizard_answer"
    t.boolean  "status"
    t.integer  "order"
    t.integer  "wizard_step_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.string   "slug"
    t.text     "description"
    t.integer  "parent"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "categories", ["slug"], :name => "index_categories_on_slug", :unique => true

  create_table "guidelines", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.string   "slug"
    t.integer  "country_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "policies", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "projects", :force => true do |t|
    t.string   "title"
    t.string   "slug"
    t.string   "miniature"
    t.integer  "category_id"
    t.text     "abstract"
    t.integer  "location_id"
    t.integer  "user_id"
    t.text     "video"
    t.text     "description"
    t.text     "challenges"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.text     "how_know"
    t.string   "facebook_link"
    t.string   "twitter_link"
    t.boolean  "accepted"
    t.text     "needs"
    t.text     "rejected_for"
    t.boolean  "featured"
    t.integer  "somme"
  end

  create_table "questions", :force => true do |t|
    t.string   "subject"
    t.text     "question"
    t.integer  "category_id"
    t.boolean  "status"
    t.boolean  "is_solved"
    t.boolean  "featured"
    t.integer  "user_id"
    t.string   "slug"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "questions", ["slug"], :name => "index_questions_on_slug", :unique => true

  create_table "redactor_assets", :force => true do |t|
    t.integer  "user_id"
    t.string   "data_file_name",                  :null => false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    :limit => 30
    t.string   "type",              :limit => 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  add_index "redactor_assets", ["assetable_type", "assetable_id"], :name => "idx_redactor_assetable"
  add_index "redactor_assets", ["assetable_type", "type", "assetable_id"], :name => "idx_redactor_assetable_type"

  create_table "startprojects", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       :limit => 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type", "context"], :name => "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", :force => true do |t|
    t.string "name"
  end

  create_table "terms", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "slug"
    t.string   "username"
    t.text     "biography"
    t.string   "website"
    t.integer  "birthday"
    t.integer  "birthmonth"
    t.integer  "birthyear"
    t.text     "address"
    t.string   "town"
    t.integer  "country_id",             :default => 0
    t.integer  "state_id",               :default => 0
    t.integer  "phone"
    t.integer  "cid"
    t.boolean  "is_coach"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "avatar"
    t.string   "provider"
    t.string   "uid"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  add_index "users", ["slug"], :name => "index_users_on_slug", :unique => true

  create_table "welcomes", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "wizard_steps", :force => true do |t|
    t.string   "name"
    t.string   "slug"
    t.integer  "order"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "wizard_steps", ["slug"], :name => "index_wizard_steps_on_slug", :unique => true

end
