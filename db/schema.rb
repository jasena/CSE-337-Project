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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130320205803) do

  create_table "days", :force => true do |t|
    t.string   "exercises"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "date"
    t.boolean  "emp"
  end

  create_table "surveys", :force => true do |t|
    t.float    "ques1"
    t.float    "ques2"
    t.float    "ques3"
    t.float    "ques4"
    t.float    "ques5"
    t.float    "ques6"
    t.float    "ques7"
    t.float    "ques8"
    t.float    "ques9"
    t.float    "ques10"
    t.float    "ques11"
    t.float    "ques12"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "workouts", :force => true do |t|
    t.string   "name"
    t.string   "kind"
    t.date     "workout_date"
    t.string   "duration"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
