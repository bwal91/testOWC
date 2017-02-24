class UsersController < ApplicationController
  

  def index
  	@user = User.order(:first_name).where("lower(first_name) LIKE '#{:term}' or lower(last_name) LIKE '#{:term}'")
  	render json: @users.map(&:name)
  end

  # def import
  # 	User.import(params[:file])

  # 	redirect_to root_url, notice: "User Data imported"
  # end

  def create
  	@user = User.new(allowed_params)
  	if @user.save
  		session[:user_id] = @user.id
  		redirect_to '/'
  	else
  		render :back
  	end
  end









  private

  def allowed_params
  	params.require(:user).permit(:first_name, :last_name, :email, :status, :memb, :password_digest, :password_confirmation, :nationality, :emailers, :dob, :language, :gender, :join_date, :admin, :member)
  end
end
