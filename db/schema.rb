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

ActiveRecord::Schema.define(version: 20141118162852) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "guilds", force: true do |t|
    t.string   "name"
    t.integer  "world_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "player_histories", force: true do |t|
    t.integer "player_id"
    t.integer "year"
    t.integer "month"
    t.integer "day"
    t.integer "online"
    t.integer "level"
    t.integer "level_min"
    t.integer "level_max"
  end

  add_index "player_histories", ["player_id"], name: "index_player_histories_on_player_id", using: :btree

  create_table "player_names", force: true do |t|
    t.string   "name"
    t.string   "date_changed"
    t.integer  "player_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "player_names", ["player_id"], name: "index_player_names_on_player_id", using: :btree

  create_table "player_worlds", force: true do |t|
    t.integer  "player_id"
    t.integer  "world_id"
    t.datetime "time_changed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "player_worlds", ["player_id"], name: "index_player_worlds_on_player_id", using: :btree
  add_index "player_worlds", ["world_id"], name: "index_player_worlds_on_world_id", using: :btree

  create_table "players", force: true do |t|
    t.string   "name"
    t.integer  "level"
    t.boolean  "promotion"
    t.integer  "world_id"
    t.integer  "vocation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "players", ["vocation_id"], name: "index_players_on_vocation_id", using: :btree
  add_index "players", ["world_id"], name: "index_players_on_world_id", using: :btree

  create_table "players_guilds", id: false, force: true do |t|
    t.integer "player_id"
    t.integer "guild_id"
  end

  create_table "vocations", force: true do |t|
    t.string   "name"
    t.string   "promotion_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "worlds", force: true do |t|
    t.string   "name"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
