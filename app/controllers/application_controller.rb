class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	helper_method :mailbox
	helper_method :conversation
	helper_method :current_user
  	before_filter :require_login, :unless => :logged_in?

	def current_user
		@current_user = User.find(75)
		# @current_user ||= User.find(session[:user_id]) if session[:user_id]
	end
		

	def authorize
		redirect_to '/' unless current_user
	end

	private

	def logged_in?
    	@current_user ||= User.find(session[:user_id]) if session[:user_id]
  	end

  	helper_method :logged_in?

	def require_login
		unless current_user
			flash[:notice] = "You must be logged in to continue!"
			redirect_to '/'
		end
  	end

  	def mailbox
  		@mailbox ||= current_user.mailbox
  	end

  	def conversation
    	@conversation ||= mailbox.conversations.find(params[:id])
  	end
end
