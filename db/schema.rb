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

ActiveRecord::Schema.define(version: 20140407030607) do

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

end
