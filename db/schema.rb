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

ActiveRecord::Schema.define(version: 20160529194926) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contestant_teams", force: true do |t|
    t.integer  "team_id"
    t.integer  "contestant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contestants", force: true do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "occupation"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "eliminated_episode"
  end

  create_table "episode_points", force: true do |t|
    t.integer  "contestant_id"
    t.integer  "episode_number"
    t.integer  "scoring_rule_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "league_users", force: true do |t|
    t.integer  "user_id"
    t.integer  "league_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "leagues", force: true do |t|
    t.string   "name"
    t.integer  "season_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "scoring_rules", force: true do |t|
    t.integer  "points"
    t.text     "description"
    t.integer  "category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "seasons", force: true do |t|
    t.integer  "number"
    t.string   "star_name"
    t.integer  "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "league_id"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "age",        default: 26
    t.string   "occupation", default: "Software Salesman"
  end

end
