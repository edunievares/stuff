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

ActiveRecord::Schema.define(version: 20170520195852) do

  create_table "genres", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "paises", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "peliculas", force: true do |t|
    t.string   "name"
    t.string   "director"
    t.integer  "year"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "paise_id"
  end

  add_index "peliculas", ["paise_id"], name: "index_peliculas_on_paise_id", using: :btree

  create_table "platforms", force: true do |t|
    t.string   "name"
    t.string   "company"
    t.date     "start"
    t.date     "end"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roms", force: true do |t|
    t.string   "name"
    t.integer  "year"
    t.string   "company"
    t.boolean  "passed"
    t.boolean  "playing"
    t.string   "savefile"
    t.integer  "platform"
    t.integer  "genre"
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "platform_id"
    t.integer  "genre_id"
  end

  add_index "roms", ["genre_id"], name: "roms_genre_id_fk", using: :btree
  add_index "roms", ["platform_id"], name: "roms_platform_id_fk", using: :btree

  add_foreign_key "peliculas", "paises", name: "peliculas_paise_id_fk"

  add_foreign_key "roms", "genres", name: "roms_genre_id_fk"
  add_foreign_key "roms", "platforms", name: "roms_platform_id_fk"

end
