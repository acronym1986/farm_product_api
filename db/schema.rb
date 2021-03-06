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

ActiveRecord::Schema.define(version: 2021_07_21_044908) do

  create_table "farms", force: :cascade do |t|
    t.string "farm_location"
    t.decimal "plant_quantity"
    t.datetime "plant_date"
    t.decimal "pick_quantity"
    t.datetime "pick_date"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_farms_on_user_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "bunch"
    t.decimal "kg"
    t.decimal "product_price"
    t.integer "product_id", null: false
    t.integer "stall_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_orders_on_product_id"
    t.index ["stall_id"], name: "index_orders_on_stall_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "product_name"
    t.float "growth_time"
    t.integer "farm_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["farm_id"], name: "index_products_on_farm_id"
  end

  create_table "sales", force: :cascade do |t|
    t.decimal "sold_quantity"
    t.float "leftover_quantity"
    t.decimal "week_sale"
    t.decimal "annual_sale"
    t.integer "product_id", null: false
    t.integer "stall_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_sales_on_product_id"
    t.index ["stall_id"], name: "index_sales_on_stall_id"
  end

  create_table "stalls", force: :cascade do |t|
    t.string "stall_location"
    t.date "store_date"
    t.float "duration"
    t.decimal "cost"
    t.integer "table"
    t.integer "gazebo"
    t.integer "vechicle"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "farms", "users"
  add_foreign_key "orders", "products"
  add_foreign_key "orders", "stalls"
  add_foreign_key "products", "farms"
  add_foreign_key "sales", "products"
  add_foreign_key "sales", "stalls"
end
