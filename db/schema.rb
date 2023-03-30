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

ActiveRecord::Schema[7.0].define(version: 2023_03_30_120043) do
  create_table "countries", force: :cascade do |t|
    t.integer "iso_code"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries_movies", id: false, force: :cascade do |t|
    t.integer "movie_id", null: false
    t.integer "country_id", null: false
    t.index ["country_id"], name: "index_countries_movies_on_country_id"
    t.index ["movie_id"], name: "index_countries_movies_on_movie_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genders", force: :cascade do |t|
    t.string "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres_movies", id: false, force: :cascade do |t|
    t.integer "movie_id", null: false
    t.integer "genre_id", null: false
    t.index ["genre_id"], name: "index_genres_movies_on_genre_id"
    t.index ["movie_id"], name: "index_genres_movies_on_movie_id"
  end

  create_table "keywords", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "keywords_movies", id: false, force: :cascade do |t|
    t.integer "movie_id", null: false
    t.integer "keyword_id", null: false
    t.index ["keyword_id"], name: "index_keywords_movies_on_keyword_id"
    t.index ["movie_id"], name: "index_keywords_movies_on_movie_id"
  end

  create_table "language_roles", force: :cascade do |t|
    t.string "language_role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "languages", force: :cascade do |t|
    t.integer "code"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movie_casts", force: :cascade do |t|
    t.integer "movie_id", null: false
    t.integer "gender_id", null: false
    t.integer "person_id", null: false
    t.string "character_name"
    t.integer "cast_order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gender_id"], name: "index_movie_casts_on_gender_id"
    t.index ["movie_id"], name: "index_movie_casts_on_movie_id"
    t.index ["person_id"], name: "index_movie_casts_on_person_id"
  end

  create_table "movie_crews", force: :cascade do |t|
    t.integer "person_id", null: false
    t.integer "movie_id", null: false
    t.integer "department_id", null: false
    t.string "job"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_movie_crews_on_department_id"
    t.index ["movie_id"], name: "index_movie_crews_on_movie_id"
    t.index ["person_id"], name: "index_movie_crews_on_person_id"
  end

  create_table "movie_languages", force: :cascade do |t|
    t.integer "language_id", null: false
    t.integer "language_role_id", null: false
    t.integer "movie_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["language_id"], name: "index_movie_languages_on_language_id"
    t.index ["language_role_id"], name: "index_movie_languages_on_language_role_id"
    t.index ["movie_id"], name: "index_movie_languages_on_movie_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.integer "budget"
    t.text "overview"
    t.string "homepage"
    t.integer "popularity"
    t.datetime "release_date"
    t.integer "revenue"
    t.string "status"
    t.string "tagline"
    t.float "votes_avg"
    t.bigint "votes_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "runtime"
  end

  create_table "movies_production_companies", id: false, force: :cascade do |t|
    t.integer "movie_id", null: false
    t.integer "production_company_id", null: false
    t.index ["movie_id"], name: "index_movies_production_companies_on_movie_id"
    t.index ["production_company_id"], name: "index_movies_production_companies_on_production_company_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "production_companies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "movie_casts", "genders"
  add_foreign_key "movie_casts", "movies"
  add_foreign_key "movie_casts", "people"
  add_foreign_key "movie_crews", "departments"
  add_foreign_key "movie_crews", "movies"
  add_foreign_key "movie_crews", "people"
  add_foreign_key "movie_languages", "language_roles"
  add_foreign_key "movie_languages", "languages"
  add_foreign_key "movie_languages", "movies"
end
