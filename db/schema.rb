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

ActiveRecord::Schema.define(version: 20140407042409) do

  create_table "comments", force: true do |t|
    t.integer  "stars"
    t.string   "text"
    t.date     "submit_date"
    t.integer  "user_id"
    t.integer  "game_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["game_id"], name: "index_comments_on_game_id"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "games", force: true do |t|
    t.string   "game_name"
    t.string   "version"
    t.date     "create_date"
    t.date     "release_date"
    t.string   "description"
    t.integer  "developer_id"
    t.integer  "geme_info_id"
    t.integer  "geme_genre_id"
    t.integer  "game_review_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "games", ["developer_id"], name: "index_games_on_developer_id"
  add_index "games", ["game_review_id"], name: "index_games_on_game_review_id"
  add_index "games", ["geme_genre_id"], name: "index_games_on_geme_genre_id"
  add_index "games", ["geme_info_id"], name: "index_games_on_geme_info_id"

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

end
