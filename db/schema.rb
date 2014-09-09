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

ActiveRecord::Schema.define(version: 20140908232831) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "academic_courses", force: true do |t|
    t.integer  "academic_term_id"
    t.string   "course",           limit: 100
    t.string   "grade",            limit: 5
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "academic_courses", ["academic_term_id"], name: "index_academic_courses_on_academic_term_id", using: :btree

  create_table "academic_terms", force: true do |t|
    t.integer  "education_id"
    t.string   "name",         limit: 50
    t.date     "end"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "start"
  end

  add_index "academic_terms", ["education_id"], name: "index_academic_terms_on_education_id", using: :btree

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
    t.date     "issued"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "certificates", force: true do |t|
    t.integer  "types_certificate_id"
    t.string   "title",                limit: 100
    t.text     "description"
    t.date     "issued"
    t.date     "expire"
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
    t.date     "start"
    t.date     "end"
  end

  create_table "jobs", force: true do |t|
    t.integer  "company_id"
    t.string   "title",       limit: 50
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "start"
    t.date     "end"
  end

  add_index "jobs", ["company_id"], name: "index_jobs_on_company_id", using: :btree

  create_table "labels", force: true do |t|
    t.integer  "language_id"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "labels", ["language_id"], name: "index_labels_on_language_id", using: :btree

  create_table "languages", force: true do |t|
    t.string   "name",        limit: 15
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "active",                 default: false
    t.integer  "preference"
    t.string   "acronym",     limit: 5
  end

  create_table "links", force: true do |t|
    t.integer  "link_ref_id"
    t.string   "link_ref_type"
    t.string   "text",          limit: 100
    t.string   "link",          limit: 500
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: true do |t|
    t.string   "name",        limit: 25
    t.text     "description"
    t.date     "created"
    t.date     "updated"
    t.string   "version",     limit: 15
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "publications", force: true do |t|
    t.string   "title",       limit: 500
    t.text     "description"
    t.date     "published"
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

  create_table "users", force: true do |t|
    t.string   "email",                             default: "", null: false
    t.string   "encrypted_password",                default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",                   default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "authentication_token"
    t.string   "name",                   limit: 50
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree

end
