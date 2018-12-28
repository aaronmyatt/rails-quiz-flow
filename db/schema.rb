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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2018_12_21_031457) do
=======

ActiveRecord::Schema.define(version: 2018_12_28_073652) do
>>>>>>> Started working on the admin dashboard. Added admin controller and model

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_categories_on_user_id"
  end

<<<<<<< HEAD
=======
  create_table "category_admins", force: :cascade do |t|
    t.string "name"
    t.string "added_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

>>>>>>> Started working on the admin dashboard. Added admin controller and model
  create_table "drilldowns", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_drilldowns_on_user_id"
  end

  create_table "questions", force: :cascade do |t|
    t.text "name"
    t.integer "rating"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_questions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
