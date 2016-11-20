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

ActiveRecord::Schema.define(version: 20161118162150) do

  create_table "activities", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "action_table_id"
    t.string   "action_type"
    t.string   "action_table_name"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["user_id"], name: "index_activities_on_user_id"
  end

  create_table "answers", force: :cascade do |t|
    t.string   "content"
    t.integer  "word_id"
    t.boolean  "is_correct"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["word_id"], name: "index_answers_on_word_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exam_words", force: :cascade do |t|
    t.integer  "exam_id"
    t.integer  "word_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exam_id"], name: "index_exam_words_on_exam_id"
    t.index ["word_id"], name: "index_exam_words_on_word_id"
  end

  create_table "exams", force: :cascade do |t|
    t.integer  "lesson_id"
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_id"], name: "index_exams_on_lesson_id"
  end

  create_table "lessons", force: :cascade do |t|
    t.string   "title"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["category_id"], name: "index_lessons_on_category_id"
  end

  create_table "ralationships", force: :cascade do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "relationships", force: :cascade do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "result_exams", force: :cascade do |t|
    t.integer  "exam_id"
    t.integer  "user_id"
    t.integer  "user_answer_id"
    t.integer  "word_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["exam_id"], name: "index_result_exams_on_exam_id"
    t.index ["user_id"], name: "index_result_exams_on_user_id"
  end

  create_table "user_lessons", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "lesson_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_id"], name: "index_user_lessons_on_lesson_id"
    t.index ["user_id"], name: "index_user_lessons_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.boolean  "is_admin"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "words", force: :cascade do |t|
    t.string   "content"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["category_id"], name: "index_words_on_category_id"
  end

end
