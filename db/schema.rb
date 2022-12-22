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

ActiveRecord::Schema.define(version: 2022_12_03_143727) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "funding_products", force: :cascade do |t|
    t.string "product_id"
    t.integer "seller_id_id"
    t.string "category_id"
    t.string "title"
    t.date "deadline"
    t.integer "achieve_rate"
    t.integer "achieve_money"
    t.integer "supporters_number"
    t.string "brand"
    t.string "product_detail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"
    t.index ["seller_id_id"], name: "index_funding_products_on_seller_id_id"
  end

  create_table "homes", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string "order_id"
    t.integer "user_id"
    t.integer "product_id_id"
    t.integer "price"
    t.integer "quantity"
    t.integer "delivery_fee"
    t.integer "total_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id_id"], name: "index_orders_on_product_id_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "rewards", force: :cascade do |t|
    t.string "reward_id"
    t.integer "product_id_id"
    t.string "reward_name"
    t.string "reward_content"
    t.integer "reward_price"
    t.string "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id_id"], name: "index_rewards_on_product_id_id"
  end

  create_table "sellers", force: :cascade do |t|
    t.string "seller_id"
    t.integer "user_id"
    t.integer "registration_num"
    t.string "company_name"
    t.string "ceo_name"
    t.string "company_address"
    t.string "ceo_email"
    t.integer "ceo_num"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_sellers_on_user_id"
  end

  create_table "user_likes", force: :cascade do |t|
    t.integer "user"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fuding_product_id"], name: "index_user_likes_on_funding_product_id"
    t.index ["user_id"], name: "index_user_likes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nickname"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
