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

ActiveRecord::Schema.define(version: 20161026160632) do

  create_table "personas", primary_key: "cedula", force: :cascade do |t|
    t.string   "nombres"
    t.string   "apellidos"
    t.string   "email"
    t.string   "departamento"
    t.string   "cargo"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "prestamos", force: :cascade do |t|
    t.date     "fechaEntrega"
    t.date     "fechaDevolucion"
    t.text     "razon"
    t.text     "observaciones"
    t.integer  "persona_cedula"
    t.integer  "vehiculo_placa"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vehiculos", primary_key: "placa", id: :string, force: :cascade do |t|
    t.string   "marca"
    t.string   "modelo"
    t.string   "color"
    t.string   "tipo"
    t.integer  "kilometraje"
    t.integer  "capacidadPasajeros"
    t.text     "observaciones"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.index ["placa"], name: "sqlite_autoindex_vehiculos_1", unique: true
  end

end
