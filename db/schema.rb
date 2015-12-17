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

ActiveRecord::Schema.define(version: 20151217190018) do

  create_table "bars", force: :cascade do |t|
    t.integer "cif"
    t.float   "x"
    t.float   "y"
    t.string  "tapas"
    t.string  "descripcion"
    t.string  "nombre"
  end

  create_table "tapas", force: :cascade do |t|
    t.string  "descripcion"
    t.integer "codigo"
    t.string  "nombre"
    t.float   "overall"
    t.integer "bar_id"
  end

  add_index "tapas", ["bar_id"], name: "index_tapas_on_bar_id"

  create_table "usuarios", force: :cascade do |t|
    t.string "password"
    t.string "email"
  end

end
