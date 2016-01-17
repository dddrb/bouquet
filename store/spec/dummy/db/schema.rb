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

ActiveRecord::Schema.define(version: 20160116160520) do

  create_table "bouquet_arrivals", force: :cascade do |t|
    t.string   "state"
    t.date     "date"
    t.integer  "quantity"
    t.integer  "purchase_order_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["purchase_order_id"], name: "index_bouquet_arrivals_on_purchase_order_id"
  end

  create_table "bouquet_assemblies", force: :cascade do |t|
    t.string   "name"
    t.integer  "quantity"
    t.integer  "product_id"
    t.integer  "material_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["material_id"], name: "index_bouquet_assemblies_on_material_id"
    t.index ["product_id"], name: "index_bouquet_assemblies_on_product_id"
  end

  create_table "bouquet_customers", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bouquet_deliveries", force: :cascade do |t|
    t.string   "state"
    t.date     "date"
    t.integer  "quantity"
    t.integer  "shipment_id"
    t.integer  "location_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["location_id"], name: "index_bouquet_deliveries_on_location_id"
    t.index ["shipment_id"], name: "index_bouquet_deliveries_on_shipment_id"
  end

  create_table "bouquet_locations", force: :cascade do |t|
    t.string   "name"
    t.integer  "capacity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bouquet_materials", force: :cascade do |t|
    t.string   "name"
    t.integer  "expiration_days"
    t.integer  "order_lead_time"
    t.integer  "order_quantity"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "bouquet_products", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bouquet_purchase_orders", force: :cascade do |t|
    t.string   "state"
    t.date     "date"
    t.integer  "quantity"
    t.date     "arrival_date"
    t.integer  "material_id"
    t.integer  "supplier_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["material_id"], name: "index_bouquet_purchase_orders_on_material_id"
    t.index ["supplier_id"], name: "index_bouquet_purchase_orders_on_supplier_id"
  end

  create_table "bouquet_retrievals", force: :cascade do |t|
    t.string   "state"
    t.date     "date"
    t.integer  "quantity"
    t.integer  "storage_id"
    t.integer  "delivery_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["delivery_id"], name: "index_bouquet_retrievals_on_delivery_id"
    t.index ["storage_id"], name: "index_bouquet_retrievals_on_storage_id"
  end

  create_table "bouquet_sales_orders", force: :cascade do |t|
    t.string   "state"
    t.date     "date"
    t.integer  "quantity"
    t.date     "shipment_date"
    t.integer  "product_id"
    t.integer  "customer_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["customer_id"], name: "index_bouquet_sales_orders_on_customer_id"
    t.index ["product_id"], name: "index_bouquet_sales_orders_on_product_id"
  end

  create_table "bouquet_shipments", force: :cascade do |t|
    t.string   "state"
    t.date     "date"
    t.integer  "quantity"
    t.integer  "sales_order_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["sales_order_id"], name: "index_bouquet_shipments_on_sales_order_id"
  end

  create_table "bouquet_stocks", force: :cascade do |t|
    t.string   "state"
    t.date     "date"
    t.integer  "quantity"
    t.integer  "arrival_id"
    t.integer  "location_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["arrival_id"], name: "index_bouquet_stocks_on_arrival_id"
    t.index ["location_id"], name: "index_bouquet_stocks_on_location_id"
  end

  create_table "bouquet_storages", force: :cascade do |t|
    t.string   "state"
    t.date     "date"
    t.integer  "quantity"
    t.integer  "stock_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["stock_id"], name: "index_bouquet_storages_on_stock_id"
  end

  create_table "bouquet_suppliers", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
