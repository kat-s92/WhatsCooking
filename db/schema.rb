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

ActiveRecord::Schema[7.0].define(version: 2023_06_14_115631) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "chefs", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "food_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "food_items", force: :cascade do |t|
    t.string "name"
    t.bigint "food_category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["food_category_id"], name: "index_food_items_on_food_category_id"
  end

  create_table "missing_items", force: :cascade do |t|
    t.bigint "food_item_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["food_item_id"], name: "index_missing_items_on_food_item_id"
  end

  create_table "pg_search_documents", force: :cascade do |t|
    t.text "content"
    t.string "searchable_type"
    t.bigint "searchable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["searchable_type", "searchable_id"], name: "index_pg_search_documents_on_searchable"
  end

  create_table "recipe_food_items", force: :cascade do |t|
    t.bigint "food_item_id", null: false
    t.bigint "recipe_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["food_item_id"], name: "index_recipe_food_items_on_food_item_id"
    t.index ["recipe_id"], name: "index_recipe_food_items_on_recipe_id"
  end

  create_table "recipe_steps", force: :cascade do |t|
    t.integer "number"
    t.text "description"
    t.float "duration"
    t.bigint "recipe_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "ingredients", default: [], array: true
    t.index ["recipe_id"], name: "index_recipe_steps_on_recipe_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.integer "duration"
    t.integer "portion_size", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "chef_id"
    t.text "ingredients", default: [], array: true
    t.bigint "shopping_cart_id"
    t.index ["chef_id"], name: "index_recipes_on_chef_id"
    t.index ["shopping_cart_id"], name: "index_recipes_on_shopping_cart_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.text "comment"
    t.bigint "recipe_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipe_id"], name: "index_reviews_on_recipe_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "saved_chefs", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "chef_id"
    t.index ["chef_id"], name: "index_saved_chefs_on_chef_id"
    t.index ["user_id"], name: "index_saved_chefs_on_user_id"
  end

  create_table "saved_recipes", force: :cascade do |t|
    t.bigint "recipe_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipe_id"], name: "index_saved_recipes_on_recipe_id"
    t.index ["user_id"], name: "index_saved_recipes_on_user_id"
  end

  create_table "shopping_carts", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "missing_item_id"
    t.index ["missing_item_id"], name: "index_shopping_carts_on_missing_item_id"
    t.index ["user_id"], name: "index_shopping_carts_on_user_id"
  end

  create_table "shops", force: :cascade do |t|
    t.string "address"
    t.string "opening_hours"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "latitude"
    t.float "longitude"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.bigint "shopping_cart_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["shopping_cart_id"], name: "index_users_on_shopping_cart_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "food_items", "food_categories"
  add_foreign_key "missing_items", "food_items"
  add_foreign_key "recipe_food_items", "food_items"
  add_foreign_key "recipe_food_items", "recipes"
  add_foreign_key "recipe_steps", "recipes"
  add_foreign_key "recipes", "chefs"
  add_foreign_key "recipes", "shopping_carts"
  add_foreign_key "reviews", "recipes"
  add_foreign_key "reviews", "users"
  add_foreign_key "saved_chefs", "chefs"
  add_foreign_key "saved_chefs", "users"
  add_foreign_key "saved_recipes", "recipes"
  add_foreign_key "saved_recipes", "users"
  add_foreign_key "shopping_carts", "missing_items"
  add_foreign_key "shopping_carts", "users"
  add_foreign_key "users", "shopping_carts"
end
