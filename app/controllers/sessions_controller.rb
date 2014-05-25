class SessionsController < ApplicationController
	def new
	end
	
	def create
		user = User.find_by_email(params[:session][:email])
		if user && user.authenticate(params[:session][:password])
			sign_in user
			if params[:session][:appos] == 'ios7'
				#render 'show'
				send_back_json user
			else
				redirect_back_or user
			end
		else
			flash.now[:error] = 'Invalid email/password combination' # Not quite right!
			render 'new'		
		end 
	end
		
	def destroy
		sign_out
		redirect_to root_path
	end
end
