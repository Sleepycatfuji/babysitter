ActiveRecord::Schema.define(version: 2022_03_23_041324) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "babysitters", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.bigint "booking_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["booking_id"], name: "index_babysitters_on_booking_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.string "start"
    t.string "end"
    t.bigint "parents_id", null: false
    t.bigint "babysitters_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["babysitters_id"], name: "index_bookings_on_babysitters_id"
    t.index ["parents_id"], name: "index_bookings_on_parents_id"
  end

  create_table "children", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "notes"
    t.bigint "parent_id", null: false
    t.bigint "booking_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["booking_id"], name: "index_children_on_booking_id"
    t.index ["parent_id"], name: "index_children_on_parent_id"
  end

  create_table "parents", force: :cascade do |t|
    t.string "address"
    t.string "phone_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
  end

  add_foreign_key "bookings", "babysitters", column: "babysitters_id"
  add_foreign_key "bookings", "parents", column: "parents_id"
  add_foreign_key "children", "bookings"
  add_foreign_key "children", "parents"
end
