class SessionsController < ApplicationController
	def new
	end

	def create
		user = User.find_by(username: params[:session][:username].downcase)
		if user && user.authenticate(params[:session][:password])
		  session[:user_id]=user.id
		  redirect_to new_request_path
		else
		  flash.now[:danger] = 'Invalid email/password combination'
		  render 'new'
		end
    end

	def destroy
	  session[:user_id] = nil
	  flash[:notice] = "Logged out successfully"
	  redirect_to root_path
	end

	private

	def login_user!(user)
	  session[:user_id] = user.id
	  flash[:notice] = "Welcome, you're now logged in"
	  redirect_to root_path
	end
end
