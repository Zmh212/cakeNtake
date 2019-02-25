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

ActiveRecord::Schema.define(version: 2019_02_14_163048) do

  create_table "categories", force: :cascade do |t|
    t.string "categoryname"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "email"
    t.string "phone"
    t.string "address1"
    t.string "address2"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.text "addlnotes"
    t.integer "rewardpoints"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "empname"
    t.text "position"
    t.float "salary"
    t.date "joined"
    t.date "left"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prodingrediants", force: :cascade do |t|
    t.string "productname"
    t.string "categoryname"
    t.integer "quantity"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "productname"
    t.string "productimage"
    t.text "description"
    t.integer "category_id"
    t.float "saleprice"
    t.string "status"
    t.float "purchaseprice"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "purchasedetails", force: :cascade do |t|
    t.integer "purchase_id"
    t.integer "product_id"
    t.float "saleprice"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "purchases", force: :cascade do |t|
    t.integer "customer_id"
    t.date "saledate"
    t.text "salenotes"
    t.string "status"
    t.boolean "specialPurchase"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reorders", force: :cascade do |t|
    t.integer "product_id"
    t.integer "qtyorder"
    t.date "reorderdate"
    t.date "expecteddelivery"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "product_id"
    t.date "reviewdate"
    t.text "comments"
    t.integer "rating"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
