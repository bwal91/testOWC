class ConversationsController < ApplicationController
  before_filter :require_login
  autocomplete :recipients, :first_name, :last_name
  
  def new
  end

  def select
    respond_to do |format|
      format.html
      format.json {@users_to_email = User.search(params[:term])}
    end
  end

  def search
    term = params[:term]
    user = User.where("lower(first_name) LIKE '#{:term}' or lower(last_name) LIKE '#{:term}'")
    render json: users.map { |user|
      {
        first_name: user.first_name,
        last_name: user.last_name,
        }
      }
    end
end