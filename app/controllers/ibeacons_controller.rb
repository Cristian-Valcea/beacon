class IbeaconsController < ApplicationController 
	before_filter :signed_in_user, only: [:create, :destroy]
	before_filter :correct_user,	only: :destroy
	
	def create
	@ibeacon = current_user.ibeacons.build(params[:ibeacon])

	if @ibeacon.save
	    flash[:success] = "iBeacon added!"
		redirect_to root_path
	else
		render 'static_pages/home' end
	end
	
	def destroy 
		@ibeacon.destroy
		redirect_back_or root_path
	end
	
	def correct_user
		@ibeacon = current_user.ibeacons.find_by_id(params[:id])
		redirect_to root_path if @ibeacon.nil?
	end	
	
		 
end