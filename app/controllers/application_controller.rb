class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	helper_method :mailbox
	helper_method :conversation
  	# before_filter :require_login, :unless => :logged_in?
  	# before_action :configure_permitted_parameters, if: :devise_controller?

	def current_user
		# @current_user = User.find(session[:user_id])
		@current_user ||= User.find(session[:user_id]) if session[:user_id]
	end
	helper_method :current_user
		

	def authorize
		redirect_to '/login' unless current_user
	end

	# protected

	# def configure_permitted_parameters
 #  		devise_parameter_sanitizer.permit(:sign_in) do |user_params|
 #    	user_params.permit(:email, :password)
 #  	end
  # end

	private

	def logged_in?
    	@current_user ||= User.find(session[:user_id]) if session[:user_id]
  	end

	def require_login
		unless logged_in?
			flash[:notice] = "You must be logged in to continue!"
			redirect_to '/login'
		end
  	end

  	def mailbox
  		@mailbox ||= current_user.mailbox
  	end

  	def conversation
    	@conversation ||= mailbox.conversations.find(params[:id])
  	end

end
