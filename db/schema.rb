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

ActiveRecord::Schema[7.2].define(version: 2024_10_05_045718) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", primary_key: "category_id", id: :serial, force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_categories_on_category_id"
  end

  create_table "items", primary_key: "item_id", id: :serial, force: :cascade do |t|
    t.string "name", null: false
    t.string "manufacturer"
    t.integer "category_id", null: false
    t.string "color"
    t.integer "price", default: 0, null: false
    t.integer "stock", default: 0, null: false
    t.boolean "recommended", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_items_on_category_id"
    t.index ["item_id"], name: "index_items_on_item_id"
  end

  create_table "items_in_carts", id: false, force: :cascade do |t|
    t.string "user_id", null: false
    t.integer "item_id", null: false
    t.integer "amount", null: false
    t.date "booked_date", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_items_in_carts_on_item_id"
    t.index ["user_id"], name: "index_items_in_carts_on_user_id"
  end

  create_table "purchase_details", primary_key: "purchase_detail_id", id: :serial, force: :cascade do |t|
    t.integer "purchase_id", null: false
    t.integer "item_id", null: false
    t.integer "amount", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_purchase_details_on_item_id"
    t.index ["purchase_detail_id"], name: "index_purchase_details_on_purchase_detail_id"
    t.index ["purchase_id"], name: "index_purchase_details_on_purchase_id"
  end

  create_table "purchases", primary_key: "purchase_id", id: :serial, force: :cascade do |t|
    t.string "purchased_user", null: false
    t.date "purchased_date", null: false
    t.string "destination"
    t.boolean "cancel", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["purchase_id"], name: "index_purchases_on_purchase_id"
    t.index ["purchased_user"], name: "index_purchases_on_purchased_user"
  end

  create_table "users", primary_key: "user_id", id: :string, force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password", null: false
    t.string "name"
    t.string "address"
    t.index ["user_id"], name: "index_users_on_user_id"
  end

  add_foreign_key "items", "categories", primary_key: "category_id"
  add_foreign_key "items_in_carts", "items", primary_key: "item_id"
  add_foreign_key "items_in_carts", "users", primary_key: "user_id"
  add_foreign_key "purchase_details", "items", primary_key: "item_id"
  add_foreign_key "purchase_details", "purchases", primary_key: "purchase_id"
  add_foreign_key "purchases", "users", column: "purchased_user", primary_key: "user_id"
end
