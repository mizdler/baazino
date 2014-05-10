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

ActiveRecord::Schema.define(version: 20140510182137) do

  create_table "banks", force: true do |t|
    t.string   "bank_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.integer  "commentable_id",   default: 0
    t.string   "commentable_type"
    t.string   "title"
    t.text     "body"
    t.string   "subject"
    t.integer  "user_id",          default: 0, null: false
    t.integer  "parent_id"
    t.integer  "lft"
    t.integer  "rgt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["commentable_id", "commentable_type"], name: "index_comments_on_commentable_id_and_commentable_type"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "developer_accounts", force: true do |t|
    t.string   "account_balance"
    t.string   "account_number"
    t.integer  "bank_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "developer_accounts", ["bank_id"], name: "index_developer_accounts_on_bank_id"

  create_table "developers", force: true do |t|
    t.string   "ssid"
    t.string   "tel"
    t.integer  "developer_account_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "developers", ["developer_account_id"], name: "index_developers_on_developer_account_id"
  add_index "developers", ["user_id"], name: "index_developers_on_user_id"

  create_table "game_rates", force: true do |t|
    t.integer  "game_id"
    t.integer  "game_play"
    t.integer  "graphic"
    t.integer  "story"
    t.integer  "total"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "game_rates", ["game_id"], name: "index_game_rates_on_game_id"

# Could not dump table "games" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

  create_table "gates", force: true do |t|
    t.string   "bank_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "genres", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "likes", force: true do |t|
    t.integer  "user_id"
    t.integer  "game_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "likes", ["game_id"], name: "index_likes_on_game_id"
  add_index "likes", ["user_id"], name: "index_likes_on_user_id"

  create_table "platforms", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profiles", force: true do |t|
    t.integer  "user_id"
    t.string   "firstname"
    t.string   "lastname"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id"

  create_table "purchases", force: true do |t|
    t.date     "purchase_date"
    t.string   "cart_number"
    t.integer  "price"
    t.integer  "user_id"
    t.integer  "game_id"
    t.integer  "gate_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "purchases", ["game_id"], name: "index_purchases_on_game_id"
  add_index "purchases", ["gate_id"], name: "index_purchases_on_gate_id"
  add_index "purchases", ["user_id"], name: "index_purchases_on_user_id"

  create_table "reviews", force: true do |t|
    t.string   "title"
    t.string   "content"
    t.integer  "game_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reviews", ["game_id"], name: "index_reviews_on_game_id"

  create_table "users", force: true do |t|
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

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "votes", force: true do |t|
    t.integer  "votable_id"
    t.string   "votable_type"
    t.integer  "voter_id"
    t.string   "voter_type"
    t.boolean  "vote_flag"
    t.string   "vote_scope"
    t.integer  "vote_weight"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "votes", ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope"
  add_index "votes", ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope"

end
