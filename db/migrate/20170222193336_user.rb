class User < ActiveRecord::Migration[5.0]

	create_table "Users", force: :cascade do |t|
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
	    t.string   "member"
	    t.datetime "created_at",      null: false
    	t.datetime "updated_at",      null: false

	    t.timestamps
	end
end
