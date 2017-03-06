class DropColumnsUser < ActiveRecord::Migration[5.0]
  def change
  	remove_column   :Users, :batch
    remove_column   :Users, :form_completed
    remove_column   :Users, :address1
    remove_column   :Users, :address2
    remove_column   :Users, :address3
    remove_column   :Users, :post_code
    remove_column   :Users, :city
    remove_column   :Users, :area
    remove_column   :Users, :home
    remove_column   :Users, :mobile
    remove_column   :Users, :hardmail
    remove_column   :Users, :working
    remove_column   :Users, :company
    remove_column   :Users, :volunteer
    remove_column   :Users, :computer_skills
    remove_column   :Users, :skills_finance
    remove_column   :Users, :skills_eventmgmt
    remove_column   :Users, :interview
    remove_column   :Users, :other_skills
    remove_column   :Users, :partner
    remove_column   :Users, :partner_first_name
    remove_column   :Users, :partner_last_name
    remove_column   :Users, :partner_company
  end
end
