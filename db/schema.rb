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

ActiveRecord::Schema[7.1].define(version: 0) do
  create_schema "readyset"

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "title_basics", primary_key: "tconst", id: :text, force: :cascade do |t|
    t.text "titletype"
    t.text "primarytitle"
    t.text "originaltitle"
    t.boolean "isadult"
    t.integer "startyear"
    t.integer "endyear"
    t.integer "runtimeminutes"
    t.text "genres"
  end

  create_table "title_ratings", primary_key: "tconst", id: :text, force: :cascade do |t|
    t.decimal "averagerating"
    t.integer "numvotes"
  end

end
