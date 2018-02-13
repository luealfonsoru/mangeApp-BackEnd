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

ActiveRecord::Schema.define(version: 20180212043738) do

  create_table "acta", force: :cascade do |t|
    t.date "fecha"
    t.string "nombre"
    t.integer "consecutivo"
    t.integer "user_proyect_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_proyect_id"], name: "index_acta_on_user_proyect_id"
  end

  create_table "compromisos", force: :cascade do |t|
    t.date "fecha"
    t.string "nombre"
    t.string "responsable"
    t.integer "actum_id"
    t.boolean "done"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["actum_id"], name: "index_compromisos_on_actum_id"
  end

  create_table "cronogramas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "entregables", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "funcionalidads", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "proyects", force: :cascade do |t|
    t.string "name"
    t.integer "number"
    t.string "description"
    t.date "start"
    t.date "end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tareas", force: :cascade do |t|
    t.integer "numero"
    t.string "serial"
    t.integer "user_proyect_id"
    t.date "fecha"
    t.date "semana"
    t.float "horas"
    t.integer "funcionalidad_id"
    t.integer "cronograma_id"
    t.integer "entregable_id"
    t.string "descripcion"
    t.date "solicitud"
    t.string "estado"
    t.boolean "review"
    t.integer "user_id"
    t.string "review_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cronograma_id"], name: "index_tareas_on_cronograma_id"
    t.index ["entregable_id"], name: "index_tareas_on_entregable_id"
    t.index ["funcionalidad_id"], name: "index_tareas_on_funcionalidad_id"
    t.index ["user_id"], name: "index_tareas_on_user_id"
    t.index ["user_proyect_id"], name: "index_tareas_on_user_proyect_id"
  end

  create_table "user_proyects", force: :cascade do |t|
    t.integer "user_id"
    t.integer "proyect_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["proyect_id"], name: "index_user_proyects_on_proyect_id"
    t.index ["user_id"], name: "index_user_proyects_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "provider", default: "email", null: false
    t.string "uid", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "name"
    t.string "nickname"
    t.string "image"
    t.string "email"
    t.text "tokens"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true
  end

end
