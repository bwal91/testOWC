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

ActiveRecord::Schema.define(version: 20170221222620) do

  create_table "Members", force: :cascade do |t|
    t.integer  "batch"
    t.string   "form_completed"
    t.string   "status"
    t.integer  "memb"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password_digest"
    t.string   "address1"
    t.string   "address2"
    t.string   "address3"
    t.string   "post_code"
    t.string   "city"
    t.string   "area"
    t.string   "home"
    t.string   "mobile"
    t.string   "nationality"
    t.string   "email"
    t.string   "emailers"
    t.string   "hardmail"
    t.string   "working"
    t.string   "company"
    t.string   "volunteer"
    t.string   "computer_skills"
    t.string   "skills_finance"
    t.string   "skills_eventmgmt"
    t.string   "interview"
    t.string   "other_skills"
    t.string   "partner"
    t.string   "partner_first_name"
    t.string   "partner_last_name"
    t.string   "partner_company"
    t.string   "dob"
    t.string   "language"
    t.string   "gender"
    t.string   "join_date"
    t.integer  "admin"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "member"
  end

  create_table "Payments", force: :cascade do |t|
    t.string   "date_payment"
    t.string   "date_treasury"
    t.string   "trans_date"
    t.string   "expiration_date"
    t.string   "online"
    t.string   "confirmation_number"
    t.string   "leaving_date"
    t.string   "receipt_number"
    t.string   "receipt_book"
    t.string   "amount_paid"
    t.string   "receipted_by"
    t.string   "data_base_input"
    t.string   "comments"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

end
