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

ActiveRecord::Schema[7.0].define(version: 2023_07_12_194744) do
  create_table "award_winners", force: :cascade do |t|
    t.integer "award_id", null: false
    t.string "award_receiver_type", null: false
    t.integer "award_receiver_id", null: false
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["award_id"], name: "index_award_winners_on_award_id"
    t.index ["award_receiver_type", "award_receiver_id"], name: "index_award_winners_on_award_receiver"
  end

  create_table "awards", force: :cascade do |t|
    t.string "award_name"
    t.text "award_description"
    t.string "rails"
    t.string "generate"
    t.string "model"
    t.string "AwardWinner"
    t.integer "award_id", null: false
    t.string "award_receiver_type", null: false
    t.integer "award_receiver_id", null: false
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["award_id"], name: "index_awards_on_award_id"
    t.index ["award_receiver_type", "award_receiver_id"], name: "index_awards_on_award_receiver"
  end

  create_table "characters", force: :cascade do |t|
    t.integer "publisher_id", null: false
    t.string "name"
    t.text "deck"
    t.string "image_thumb"
    t.string "image_small"
    t.string "origin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["publisher_id"], name: "index_characters_on_publisher_id"
  end

  create_table "comic_books", force: :cascade do |t|
    t.integer "publisher_id", null: false
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["publisher_id"], name: "index_comic_books_on_publisher_id"
  end

  create_table "publishers", force: :cascade do |t|
    t.string "name"
    t.text "deck"
    t.string "image_thumb"
    t.string "image_small"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "award_winners", "awards"
  add_foreign_key "awards", "awards"
  add_foreign_key "characters", "publishers"
  add_foreign_key "comic_books", "publishers"
end
