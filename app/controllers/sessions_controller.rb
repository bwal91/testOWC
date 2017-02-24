class SessionsController < ApplicationController

	def create
		user = User.find_by(email: params[:email])
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to '/'
		else
			flash[:error] = "Email or Password are Invalid"
			render :back
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to '/'
	end
end
