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

ActiveRecord::Schema.define(version: 20160911034245) do

  create_table "crono_jobs", force: :cascade do |t|
    t.string   "job_id",            null: false
    t.text     "log"
    t.datetime "last_performed_at"
    t.boolean  "healthy"
    t.text     "args"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["job_id"], name: "index_crono_jobs_on_job_id", unique: true
  end

  create_table "events", force: :cascade do |t|
    t.string   "flight"
    t.decimal  "lat"
    t.decimal  "lon"
    t.integer  "altitude"
    t.string   "hex"
    t.integer  "speed"
    t.string   "track"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "last_seen"
    t.integer  "plane_id"
    t.index ["plane_id"], name: "index_events_on_plane_id"
  end

  create_table "planes", force: :cascade do |t|
    t.string   "flight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["flight"], name: "index_planes_on_flight", unique: true
  end

end
