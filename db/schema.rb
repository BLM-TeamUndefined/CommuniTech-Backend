# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_06_13_024304) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "organizations", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.string "email"
    t.integer "phone"
    t.string "mission"
    t.string "location"
    t.string "image"
    t.string "website"
    t.string "twitter"
    t.string "instagram"
    t.string "facebook"
    t.string "logo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "professionals", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.string "tech_stack"
    t.string "bio"
    t.string "profession"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "project_professionals", force: :cascade do |t|
    t.bigint "professional_id", null: false
    t.bigint "project_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["professional_id"], name: "index_project_professionals_on_professional_id"
    t.index ["project_id"], name: "index_project_professionals_on_project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.bigint "organization_id", null: false
    t.string "name"
    t.string "description"
    t.string "expectations"
    t.string "timeline"
    t.string "team_size"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["organization_id"], name: "index_projects_on_organization_id"
  end

  add_foreign_key "project_professionals", "professionals"
  add_foreign_key "project_professionals", "projects"
  add_foreign_key "projects", "organizations"
end
