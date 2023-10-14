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

ActiveRecord::Schema[7.1].define(version: 2023_10_14_075243) do
  create_table "brands", force: :cascade do |t|
    t.text "name"
    t.integer "maker_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["maker_id"], name: "index_brands_on_maker_id"
  end

  create_table "colors", force: :cascade do |t|
    t.text "system_name"
    t.text "display_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "devices", force: :cascade do |t|
    t.integer "flag"
    t.integer "maker_id", null: false
    t.integer "brand_id", null: false
    t.integer "storage_id", null: false
    t.integer "color_id", null: false
    t.datetime "release_at"
    t.string "os_version"
    t.integer "price"
    t.text "memo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand_id"], name: "index_devices_on_brand_id"
    t.index ["color_id"], name: "index_devices_on_color_id"
    t.index ["maker_id"], name: "index_devices_on_maker_id"
    t.index ["storage_id"], name: "index_devices_on_storage_id"
  end

  create_table "makers", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "storages", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "brands", "makers"
  add_foreign_key "devices", "brands"
  add_foreign_key "devices", "colors"
  add_foreign_key "devices", "makers"
  add_foreign_key "devices", "storages"
end
