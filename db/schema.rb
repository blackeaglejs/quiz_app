# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150416234118) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "quiz_questions", force: :cascade do |t|
    t.string  "question"
    t.string  "answer_1"
    t.string  "answer_2"
    t.string  "answer_3"
    t.string  "answer_4"
    t.string  "correct_answer"
    t.integer "difficulty"
    t.integer "quiz_id"
  end

  add_index "quiz_questions", ["quiz_id"], name: "index_quiz_questions_on_quiz_id", using: :btree

  create_table "quizzes", force: :cascade do |t|
    t.string "quiz_name"
  end

end
