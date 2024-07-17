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

ActiveRecord::Schema[7.0].define(version: 2024_07_17_163432) do
  create_table "departaments", force: :cascade do |t|
    t.string "name"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_departaments_on_user_id"
  end

  create_table "feedbacks", force: :cascade do |t|
    t.integer "nota_p1"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_departaments", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "departament_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["departament_id"], name: "index_user_departaments_on_departament_id"
    t.index ["user_id"], name: "index_user_departaments_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "manager_id"
    t.string "username"
    t.integer "job_grade"
  end

  add_foreign_key "departaments", "users"
  add_foreign_key "user_departaments", "departaments"
  add_foreign_key "user_departaments", "users"
end
