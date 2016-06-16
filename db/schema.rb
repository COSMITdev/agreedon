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

ActiveRecord::Schema.define(version: 20160616174121) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "agreements", force: :cascade do |t|
    t.text     "description",                default: "", null: false
    t.string   "token",                      default: "", null: false
    t.string   "title",                      default: "", null: false
    t.string   "domain",                     default: "", null: false
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.string   "platforms",                  default: ""
    t.text     "customers",                  default: ""
    t.text     "princing_model",             default: ""
    t.text     "actual_problem",             default: ""
    t.text     "actual_solution",            default: ""
    t.text     "proposed_solution",          default: ""
    t.text     "value_proposition",          default: ""
    t.text     "how_customers_spend_time",   default: ""
    t.text     "product_offered_solutions",  default: ""
    t.string   "market_size",                default: ""
    t.text     "mainly_competitors",         default: ""
    t.text     "indirect_competitors",       default: ""
    t.text     "how_to_validate_market",     default: ""
    t.text     "main_competitive_advantage", default: ""
    t.text     "validations_for_the_launch", default: ""
  end

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority", using: :btree

  create_table "roles", force: :cascade do |t|
    t.integer  "agreement_id"
    t.string   "role",         default: "", null: false
    t.string   "email",        default: "", null: false
    t.string   "id_number"
    t.string   "full_name",    default: "", null: false
    t.string   "full_address", default: "", null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "roles", ["agreement_id"], name: "index_roles_on_agreement_id", using: :btree

  create_table "sessions", force: :cascade do |t|
    t.string   "session_id", null: false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], name: "index_sessions_on_session_id", unique: true, using: :btree
  add_index "sessions", ["updated_at"], name: "index_sessions_on_updated_at", using: :btree

  add_foreign_key "roles", "agreements"
end
