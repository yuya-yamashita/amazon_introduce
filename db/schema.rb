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

ActiveRecord::Schema.define(version: 20180210090424) do

  create_table "product_tags", force: :cascade do |t|
    t.integer "product_id", null: false
    t.integer "tag_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tag_id", "product_id"], name: "index_product_tags_on_tag_id_and_product_id", unique: true
  end

  create_table "products", force: :cascade do |t|
    t.text "title", null: false
    t.integer "price", null: false
    t.string "image", null: false
    t.text "description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "site_id", null: false
    t.integer "amazon_id"
    t.index ["title"], name: "index_products_on_products_id_and_title", unique: true
  end

  create_table "sites", force: :cascade do |t|
    t.text "name", null: false
    t.text "description", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id", "name"], name: "index_sites_on_user_id_and_name", unique: true
  end

  create_table "tags", force: :cascade do |t|
    t.text "name", null: false
    t.integer "site_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "site_id"], name: "index_tags_on_name_and_site_id", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "crypted_password"
    t.string "salt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
