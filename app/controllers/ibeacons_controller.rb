class IbeaconsController < ApplicationController 
	before_filter :signed_in_user, only: [:create, :destroy]
	
	def create
	@ibeacon = current_user.ibeacons.build(params[:ibeacon]) 
	if @ibeacon.save
	    flash[:success] = "iBeacon added!"
		redirect_to root_path
	else
		render 'static_pages/home' end
	end
	
	def destroy
	end
	 
end