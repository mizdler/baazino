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

ActiveRecord::Schema.define(version: 20140419133416) do

  create_table "banks", force: true do |t|
    t.string   "bank_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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

  create_table "game_genres", force: true do |t|
    t.integer  "game_id"
    t.integer  "genre_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "game_genres", ["game_id"], name: "index_game_genres_on_game_id"
  add_index "game_genres", ["genre_id"], name: "index_game_genres_on_genre_id"

  create_table "game_infos", force: true do |t|
    t.integer  "platform_id"
    t.string   "version_support"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "game_infos", ["platform_id"], name: "index_game_infos_on_platform_id"

  create_table "games", force: true do |t|
    t.string   "game_name"
    t.string   "version"
    t.date     "create_date"
    t.date     "release_date"
    t.string   "description"
    t.integer  "developer_id"
    t.integer  "game_info_id"
    t.integer  "review_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "price"
    t.string   "install_file_file_name"
    t.string   "install_file_content_type"
    t.integer  "install_file_file_size"
    t.datetime "install_file_updated_at"
  end

  add_index "games", ["developer_id"], name: "index_games_on_developer_id"
  add_index "games", ["game_info_id"], name: "index_games_on_game_info_id"
  add_index "games", ["review_id"], name: "index_games_on_review_id"

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

  create_table "platforms", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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

end
