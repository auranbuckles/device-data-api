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

ActiveRecord::Schema.define(version: 20180318201054) do

  create_table "clients", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.integer  "category"
    t.string   "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "devices", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "family"
    t.string   "brand"
    t.string   "model"
    t.string   "device_type"
    t.string   "os"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "devices_operating_systems", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "device_id"
    t.integer  "operating_system_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["device_id"], name: "index_devices_operating_systems_on_device_id", using: :btree
    t.index ["operating_system_id"], name: "index_devices_operating_systems_on_operating_system_id", using: :btree
  end

  create_table "operating_systems", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "os_versions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "version"
    t.integer  "device_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["device_id"], name: "index_os_versions_on_device_id", using: :btree
  end

  create_table "user_sessions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "session_id"
    t.integer  "client_id"
    t.integer  "device_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_user_sessions_on_client_id", using: :btree
    t.index ["device_id"], name: "index_user_sessions_on_device_id", using: :btree
  end

  add_foreign_key "devices_operating_systems", "devices"
  add_foreign_key "devices_operating_systems", "operating_systems"
  add_foreign_key "os_versions", "devices"
  add_foreign_key "user_sessions", "clients"
  add_foreign_key "user_sessions", "devices"
end
