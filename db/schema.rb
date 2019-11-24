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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2019_11_24_120749) do
=======
ActiveRecord::Schema.define(version: 2019_11_24_104910) do
>>>>>>> f97598c9062088060bb6b67cf6c25207fc6070bf

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

<<<<<<< HEAD
  create_table "homes", force: :cascade do |t|
=======
  create_table "farms", force: :cascade do |t|
    t.string "name"
    t.string "location"
>>>>>>> f97598c9062088060bb6b67cf6c25207fc6070bf
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

<<<<<<< HEAD
=======
  create_table "fields", force: :cascade do |t|
    t.string "name"
    t.string "crop"
    t.bigint "farm_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["farm_id"], name: "index_fields_on_farm_id"
  end

  add_foreign_key "fields", "farms"
>>>>>>> f97598c9062088060bb6b67cf6c25207fc6070bf
end
