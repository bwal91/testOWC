class HomesController < ApplicationController
  # Home Page
  def index
    @me = User.find(75)
    session[:user_id] = @me.id
  end
  def login
  end
  # Bangalore dropdown bar
  def moving_to
    render :template => "homes/bangalore/moving_to"
  end
  def what_to_do
    render :template => "homes/bangalore/what_to_do"
  end
  def life_in
    render :template => "homes/bangalore/life_in"
  end
  # Membership dropdown navigation bar
  def member_info
    render :template => "homes/membership/member_info"
  end
  def new_member
    render :template => "homes/membership/new_member"
  end
  def renew
    render :template => "homes/membership/renew"
  end
  def publication
    render :template => "homes/membership/publication"
  end
  def volunteer
    render :template => "homes/membership/volunteer"
  end
  # Our Work dropdown navigation bar
  def charities
    render :template => "homes/ourWork/charities"
  end
  def contributions
    render :template => "homes/ourWork/contributions"
  end
  def fundraising
    render :template => "homes/ourWork/fundraising"
  end
  def ssg # Social Support Group
    render :template => "homes/ourWork/ssg"
  end
  # About options on bottom of pages
  def owc_club_info
    render :template => "homes/aboutUs/owc_club_info"
  end
  def mission_statement
    render :template => "homes/aboutUs/mission_statement"
  end
  def journey
    render :template => "homes/aboutUs/journey"
  end
  # Contact Us
  def contact
    render :template => "homes/contactUs/contact"
  end
  def executive_comittee
    render :template => "homes/contactUs/executive_comittee"
  end
  def trustee
    render :template => "homes/contactUs/trustee"
  end
end
