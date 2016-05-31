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

ActiveRecord::Schema.define(version: 20160531005610) do

  create_table "phone_types", force: :cascade do |t|
    t.string   "nombre_tip_telefono", limit: 255
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "profile_phones", force: :cascade do |t|
    t.string   "num_telefono",  limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "profile_id",    limit: 4
    t.integer  "phone_type_id", limit: 4
  end

  add_index "profile_phones", ["phone_type_id"], name: "index_profile_phones_on_phone_type_id", using: :btree
  add_index "profile_phones", ["profile_id"], name: "index_profile_phones_on_profile_id", using: :btree

  create_table "profiles", force: :cascade do |t|
    t.string   "nombres",          limit: 255
    t.string   "ap_materno",       limit: 255
    t.string   "ap_paterno",       limit: 255
    t.string   "descripcion",      limit: 255
    t.string   "direccion",        limit: 255
    t.string   "avatar",           limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "user_id",          limit: 4
    t.integer  "ub_country_id",    limit: 4
    t.integer  "ub_department_id", limit: 4
    t.integer  "ub_province_id",   limit: 4
    t.integer  "ub_district_id",   limit: 4
  end

  add_index "profiles", ["ub_country_id"], name: "index_profiles_on_ub_country_id", using: :btree
  add_index "profiles", ["ub_department_id"], name: "index_profiles_on_ub_department_id", using: :btree
  add_index "profiles", ["ub_district_id"], name: "index_profiles_on_ub_district_id", using: :btree
  add_index "profiles", ["ub_province_id"], name: "index_profiles_on_ub_province_id", using: :btree
  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id", using: :btree

  create_table "ub_countries", force: :cascade do |t|
    t.string   "nom_pais",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "ub_departments", force: :cascade do |t|
    t.string   "nom_dpto",      limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "ub_country_id", limit: 4
  end

  add_index "ub_departments", ["ub_country_id"], name: "index_ub_departments_on_ub_country_id", using: :btree

  create_table "ub_districts", force: :cascade do |t|
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "ub_department_id", limit: 4
    t.integer  "ub_province_id",   limit: 4
  end

  add_index "ub_districts", ["ub_department_id"], name: "index_ub_districts_on_ub_department_id", using: :btree
  add_index "ub_districts", ["ub_province_id"], name: "index_ub_districts_on_ub_province_id", using: :btree

  create_table "ub_provinces", force: :cascade do |t|
    t.string   "nom_prov",         limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "ub_department_id", limit: 4
  end

  add_index "ub_provinces", ["ub_department_id"], name: "index_ub_provinces_on_ub_department_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "username",               limit: 255
    t.string   "permission_level",       limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "profile_phones", "phone_types"
  add_foreign_key "profile_phones", "profiles"
  add_foreign_key "profiles", "ub_countries"
  add_foreign_key "profiles", "ub_departments"
  add_foreign_key "profiles", "ub_districts"
  add_foreign_key "profiles", "ub_provinces"
  add_foreign_key "profiles", "users"
  add_foreign_key "ub_departments", "ub_countries"
  add_foreign_key "ub_districts", "ub_departments"
  add_foreign_key "ub_districts", "ub_provinces"
  add_foreign_key "ub_provinces", "ub_departments"
end
