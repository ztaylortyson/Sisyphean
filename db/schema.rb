# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2025_01_02_220124) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "contracts", force: :cascade do |t|
    t.string "source"
    t.string "kind"
    t.string "year"
    t.integer "member_id"
    t.text "notes"
    t.boolean "ee_sign"
    t.date "ee_signed"
    t.date "hr_signed"
    t.date "gsm_signed"
    t.date "gm_signed"
    t.date "dir_op_signed"
    t.date "effective_date"
    t.boolean "draw"
    t.boolean "salary"
    t.boolean "hourly"
    t.boolean "duplicate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "commissions"
    t.boolean "nocomcal"
    t.boolean "er_sign"
    t.boolean "mention_pack"
  end

  create_table "depos", force: :cascade do |t|
    t.string "deponent"
    t.string "title"
    t.date "depo_date"
    t.string "employed_by"
    t.string "job_title"
    t.string "doh"
    t.string "dod"
    t.string "reports_to"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "discoveries", force: :cascade do |t|
    t.string "kind"
    t.string "set"
    t.string "verified_by"
    t.date "response_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "document_dumps", force: :cascade do |t|
    t.date "date"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.integer "employee_id"
    t.string "full_name"
    t.string "job_title"
    t.date "doh"
    t.date "dod"
    t.string "psa_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", force: :cascade do |t|
    t.string "lname"
    t.string "fname"
    t.string "phone"
    t.string "email"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.boolean "client"
    t.integer "employee_id"
    t.string "job_title"
    t.date "doh"
    t.date "dod"
    t.text "notes"
    t.string "psa_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "employee_list_id"
    t.boolean "contract_misplaced", default: false
    t.boolean "misplace_contract", default: false
  end

  create_table "pleadings", force: :cascade do |t|
    t.integer "roa"
    t.date "date_filed"
    t.string "title"
    t.integer "filed_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pos", force: :cascade do |t|
    t.date "date"
    t.string "title"
    t.boolean "documents"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "discovery_id", null: false
    t.string "question"
    t.integer "coa"
    t.integer "issue"
    t.string "wswk"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["discovery_id"], name: "index_reviews_on_discovery_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "sbn"
    t.string "name"
    t.string "passcode"
    t.integer "role"
    t.integer "status"
    t.integer "rank"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "initials"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "verifications", force: :cascade do |t|
    t.date "date"
    t.string "title"
    t.string "signed_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "reviews", "discoveries"
end
