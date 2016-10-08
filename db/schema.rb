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

ActiveRecord::Schema.define(version: 20161008052858) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "daily_reports", force: :cascade do |t|
    t.date     "report_date"
    t.integer  "age"
    t.text     "remedy"
    t.integer  "feed_recieved"
    t.integer  "feed_actual"
    t.integer  "feed_remains"
    t.float    "average_weight"
    t.integer  "mortality"
    t.float    "average_temperature"
    t.float    "average_hummidity"
    t.string   "stockman"
    t.text     "notes"
    t.integer  "periode_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["periode_id"], name: "index_daily_reports_on_periode_id", using: :btree
  end

  create_table "henhouses", force: :cascade do |t|
    t.string   "no"
    t.string   "name"
    t.text     "description"
    t.integer  "capacity"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "periodes", force: :cascade do |t|
    t.string   "no"
    t.string   "code"
    t.text     "description"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "total_do"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "henhouse_id"
    t.index ["henhouse_id"], name: "index_periodes_on_henhouse_id", using: :btree
  end

  add_foreign_key "daily_reports", "periodes"
  add_foreign_key "periodes", "henhouses"
end
