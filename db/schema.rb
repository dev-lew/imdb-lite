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

ActiveRecord::Schema.define(version: 0) do

  create_table "basics", id: false, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "tconst", limit: 10
    t.string "primaryTitle", limit: 239
    t.string "startYear", limit: 4
    t.string "genres", limit: 32
  end

  create_table "crews", id: false, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "tconst", limit: 10
    t.text "directors"
    t.text "writers"
  end

  create_table "names", id: false, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "nconst", limit: 10
    t.string "primaryName", limit: 95
    t.string "birthYear", limit: 4
    t.string "deathYear", limit: 4
    t.string "primaryProfession", limit: 25
    t.string "knownForTitles", limit: 10
  end

  create_table "principals", id: false, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "tconst", limit: 10
    t.string "nconst", limit: 10
    t.string "category", limit: 19
    t.string "characters", limit: 174
  end

  create_table "ratings", id: false, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "tconst", limit: 10
    t.float "averageRating", limit: 53
    t.float "numVotes", limit: 53
  end

  create_table "titles", id: false, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "titleId", limit: 10
    t.text "title"
  end

end
