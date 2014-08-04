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

ActiveRecord::Schema.define(version: 20140804203522) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "academic_periods", force: true do |t|
    t.integer  "entity_id_id"
    t.integer  "education_id_id"
    t.string   "name",            limit: 50
    t.date     "done_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "started_at"
  end

  add_index "academic_periods", ["education_id_id"], name: "index_academic_periods_on_education_id_id", using: :btree
  add_index "academic_periods", ["entity_id_id"], name: "index_academic_periods_on_entity_id_id", using: :btree

  create_table "academic_records", force: true do |t|
    t.integer  "academic_period_id_id"
    t.string   "course",                limit: 50
    t.string   "grade",                 limit: 5
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "academic_records", ["academic_period_id_id"], name: "index_academic_records_on_academic_period_id_id", using: :btree

  create_table "attachments", force: true do |t|
    t.integer  "entity_id_id"
    t.integer  "parent_id_id"
    t.string   "name",         limit: 100
    t.string   "path",         limit: 500
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "attachments", ["entity_id_id"], name: "index_attachments_on_entity_id_id", using: :btree
  add_index "attachments", ["parent_id_id"], name: "index_attachments_on_parent_id_id", using: :btree

  create_table "awards", force: true do |t|
    t.integer  "entity_id_id"
    t.integer  "parent_id_id"
    t.string   "title",        limit: 200
    t.text     "description"
    t.date     "issued_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "awards", ["entity_id_id"], name: "index_awards_on_entity_id_id", using: :btree
  add_index "awards", ["parent_id_id"], name: "index_awards_on_parent_id_id", using: :btree

  create_table "certificates", force: true do |t|
    t.integer  "entity_id_id"
    t.integer  "type_certificate_id_id"
    t.string   "title",                  limit: 100
    t.text     "description"
    t.date     "issued_at"
    t.date     "expire_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "certificates", ["entity_id_id"], name: "index_certificates_on_entity_id_id", using: :btree
  add_index "certificates", ["type_certificate_id_id"], name: "index_certificates_on_type_certificate_id_id", using: :btree

  create_table "companies", force: true do |t|
    t.integer  "entity_id_id"
    t.string   "name",         limit: 100
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "companies", ["entity_id_id"], name: "index_companies_on_entity_id_id", using: :btree

  create_table "educations", force: true do |t|
    t.integer  "entity_id_id"
    t.string   "title",        limit: 50
    t.string   "institution",  limit: 100
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "started_at"
    t.date     "done_at"
  end

  add_index "educations", ["entity_id_id"], name: "index_educations_on_entity_id_id", using: :btree

  create_table "entities", force: true do |t|
    t.string   "name",       limit: 50
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobs", force: true do |t|
    t.integer  "entity_id_id"
    t.integer  "company_id_id"
    t.string   "title",         limit: 50
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "started_at"
    t.date     "done_at"
  end

  add_index "jobs", ["company_id_id"], name: "index_jobs_on_company_id_id", using: :btree
  add_index "jobs", ["entity_id_id"], name: "index_jobs_on_entity_id_id", using: :btree

  create_table "links", force: true do |t|
    t.integer  "entity_id_id"
    t.integer  "parent_id_id"
    t.string   "text",         limit: 100
    t.string   "link",         limit: 500
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "links", ["entity_id_id"], name: "index_links_on_entity_id_id", using: :btree
  add_index "links", ["parent_id_id"], name: "index_links_on_parent_id_id", using: :btree

  create_table "publications", force: true do |t|
    t.integer  "entity_id_id"
    t.string   "title",        limit: 500
    t.text     "description"
    t.date     "published_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "publications", ["entity_id_id"], name: "index_publications_on_entity_id_id", using: :btree

  create_table "tags", force: true do |t|
    t.string   "tag",        limit: 100
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags_entities", force: true do |t|
    t.integer  "tag_id_id"
    t.integer  "entity_id_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tags_entities", ["entity_id_id"], name: "index_tags_entities_on_entity_id_id", using: :btree
  add_index "tags_entities", ["tag_id_id"], name: "index_tags_entities_on_tag_id_id", using: :btree

  create_table "types_certificates", force: true do |t|
    t.string   "name",        limit: 50
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
