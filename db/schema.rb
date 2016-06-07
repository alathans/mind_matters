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

ActiveRecord::Schema.define(version: 20160607185406) do

  create_table "accepted_insurances", force: :cascade do |t|
    t.integer  "insurer_id"
    t.integer  "therapist_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "appointments", force: :cascade do |t|
    t.string   "appointment_status"
    t.integer  "duration_minutes"
    t.datetime "datetime"
    t.integer  "user_id"
    t.integer  "therapist_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "completed_trainings", force: :cascade do |t|
    t.date     "date_completed"
    t.integer  "training_id"
    t.integer  "therapist_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "conversations", force: :cascade do |t|
    t.text     "follow_up_items"
    t.text     "body"
    t.integer  "therapist_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "credentials", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "insurers", force: :cascade do |t|
    t.string   "insurer_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "licenses", force: :cascade do |t|
    t.float    "license_number"
    t.integer  "state_id"
    t.integer  "therapist_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "specialties", force: :cascade do |t|
    t.string   "specialty_area"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "therapist_availabilities", force: :cascade do |t|
    t.integer  "time_id"
    t.integer  "therapist_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "therapist_credentials", force: :cascade do |t|
    t.integer  "credential_id"
    t.integer  "therapist_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "therapist_notes", force: :cascade do |t|
    t.text     "body"
    t.integer  "appointment_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "therapist_specialties", force: :cascade do |t|
    t.integer  "specialty_id"
    t.integer  "therapist_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "therapists", force: :cascade do |t|
    t.text     "bio"
    t.string   "education"
    t.integer  "national_provider_identifier"
    t.string   "photo"
    t.string   "address"
    t.string   "email"
    t.string   "password"
    t.string   "username"
    t.string   "last_name"
    t.string   "first_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "times", force: :cascade do |t|
    t.string   "time_slot"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trainings", force: :cascade do |t|
    t.text     "description"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_insurances", force: :cascade do |t|
    t.boolean  "uninsured"
    t.integer  "insurer_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_notes", force: :cascade do |t|
    t.text     "body"
    t.integer  "appointment_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "location_deployed"
    t.integer  "months_deployed"
    t.integer  "years_of_service"
    t.string   "last_rank"
    t.string   "occupational_specialty"
    t.string   "branch"
    t.string   "photo"
    t.string   "address"
    t.string   "password"
    t.string   "username"
    t.string   "last_name"
    t.string   "first_name"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
