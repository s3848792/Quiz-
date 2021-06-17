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

ActiveRecord::Schema.define(version: 20210617072206) do

  create_table "askings", force: :cascade do |t|
    t.string   "question"
    t.string   "description"
    t.string   "multiple_correct_answers"
    t.string   "correct_answers"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "correct_answer"
    t.string   "explanation"
    t.string   "category"
    t.string   "tip"
    t.string   "difficulty"
    t.string   "tags"
    t.string   "answer_a"
    t.string   "answer_b"
    t.string   "answer_c"
    t.string   "answer_d"
    t.string   "answer_e"
    t.string   "answer_f"
    t.string   "answer_a_correct"
    t.string   "answer_b_correct"
    t.string   "answer_c_correct"
    t.string   "answer_d_correct"
    t.string   "answer_e_correct"
    t.string   "answer_f_correct"
    t.integer  "answered"
    t.string   "selectedanswer"
    t.integer  "high_score"
  end

end
