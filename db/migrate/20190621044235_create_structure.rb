class CreateStructure < ActiveRecord::Migration[5.2]
  def change

    ActiveRecord::Schema.define(version: 2019_06_18_180926) do

  create_table "comments", force: :true do |t|
    t.text "message"
    t.string "rating"
    t.integer "user_id"
    t.integer "place_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["place_id"], name: "index_comments_on_place_id"
    t.index ["user_id", "place_id"], name: "index_comments_on_user_id_and_place_id"
  end

  create_table "photos", force: :true do |t|
    t.text "caption"
    t.integer "user_id"
    t.integer "place_id"
    t.string "photos"
    t.string "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["place_id"], name: "index_photos_on_place_id"
    t.index ["user_id", "place_id"], name: "index_photos_on_user_id_and_place_id"
  end

  create_table "places", force: :true do |t|
    t.string "name"
    t.text "description"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.float "latitude"
    t.float "longitude"
    t.index ["user_id"], name: "index_places_on_user_id"
  end

  create_table "users", force: :true do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end
 end
 end
 end


