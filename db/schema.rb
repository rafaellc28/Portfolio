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

ActiveRecord::Schema.define(version: 20140805210009) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "academic_periods", force: true do |t|
    t.integer  "education_id"
    t.string   "name",         limit: 50
    t.date     "done_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "started_at"
  end

  add_index "academic_periods", ["education_id"], name: "index_academic_periods_on_education_id", using: :btree

  create_table "academic_records", force: true do |t|
    t.integer  "academic_period_id"
    t.string   "course",             limit: 50
    t.string   "grade",              limit: 5
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "academic_records", ["academic_period_id"], name: "index_academic_records_on_academic_period_id", using: :btree

  create_table "attachments", force: true do |t|
    t.integer  "attachment_ref_id"
    t.string   "attachment_ref_type"
    t.string   "name",                limit: 100
    t.string   "path",                limit: 500
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "awards", force: true do |t|
    t.integer  "award_ref_id"
    t.string   "award_ref_type"
    t.string   "title",          limit: 200
    t.text     "description"
    t.date     "issued_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "certificates", force: true do |t|
    t.integer  "types_certificate_id"
    t.string   "title",                limit: 100
    t.text     "description"
    t.date     "issued_at"
    t.date     "expire_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "certificates", ["types_certificate_id"], name: "index_certificates_on_types_certificate_id", using: :btree

  create_table "companies", force: true do |t|
    t.string   "name",        limit: 100
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "educations", force: true do |t|
    t.string   "title",       limit: 50
    t.string   "institution", limit: 100
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "started_at"
    t.date     "done_at"
  end

  create_table "jobs", force: true do |t|
    t.integer  "company_id"
    t.string   "title",       limit: 50
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "started_at"
    t.date     "done_at"
  end

  add_index "jobs", ["company_id"], name: "index_jobs_on_company_id", using: :btree

  create_table "links", force: true do |t|
    t.integer  "link_ref_id"
    t.string   "link_ref_type"
    t.string   "text",          limit: 100
    t.string   "link",          limit: 500
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "publications", force: true do |t|
    t.string   "title",        limit: 500
    t.text     "description"
    t.date     "published_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "taggings", force: true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       limit: 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true, using: :btree
  add_index "taggings", ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context", using: :btree

  create_table "tags", force: true do |t|
    t.string  "name"
    t.integer "taggings_count", default: 0
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true, using: :btree

  create_table "types_certificates", force: true do |t|
    t.string   "name",        limit: 50
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
