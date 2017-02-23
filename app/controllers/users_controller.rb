class UsersController < ApplicationController
  # autocomplete :recipients, :first_name, :last_name

  def index
  	@user = User.order(:first_name).where("lower(first_name) LIKE '#{:term}' or lower(last_name) LIKE '#{:term}'")
  	render json: @users.map(&:name)
  end

  def import
  	User.import(params[:file])

  	redirect_to root_url, notice: "User Data imported"
  end

   # def search
   #  term = params[:term]
   #  user = User.where("lower(first_name) LIKE '#{:term}' or lower(last_name) LIKE '#{:term}'")
   #  render json: users.map { |user|
   #    {
   #      first_name: user.first_name,
   #      last_name: user.last_name,
   #      }
   #    }
   #  end



end
