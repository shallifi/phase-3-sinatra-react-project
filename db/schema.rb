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

ActiveRecord::Schema.define(version: 2022_07_01_002110) do

  create_table "audience_members", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.integer "household_income"
    t.string "city"
    t.boolean "first_time"
  end

  create_table "feedbacks", force: :cascade do |t|
    t.integer "score"
    t.string "what_did_you_enjoy"
    t.string "what_needs_improvement"
    t.boolean "would_you_watch_again"
    t.string "comment"
    t.string "how_did_you_hear_about_the_show"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "show_piece_id"
    t.integer "audience_member_id"
  end

  create_table "show_pieces", force: :cascade do |t|
    t.string "title"
    t.integer "number_of_performers"
    t.integer "length"
    t.string "music_album"
    t.string "movement_style"
  end

end
