class IbeaconsController < ApplicationController 
	before_filter :signed_in_user, only: [:create, :show, :edit, :update, :destroy]
	before_filter :correct_user,	only: :destroy
	
	respond_to :html, :json	
	
	def new 
		@ibeacon = Ibeacon.new
	end
	
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
	
	def edit
	    @ibeacon = current_ibeacon
	end
	
	def update
		@ibeacon = Ibeacon.find(params[:id])
		if @ibeacon.update_attributes(params[:ibeacon])
			flash[:success] = "Ibeacon updated"
			redirect_to @current_user
		else
			render 'edit'
		end
	end	
	
	def show
		@ibeacon = Ibeacon.find(params[:id])
		respond_with @ibeacon       # added to respond with json
	end
	
	
	
	def correct_user
		@ibeacon = current_user.ibeacons.find_by_id(params[:id])
		redirect_to root_path if @ibeacon.nil?
	end	
	
	def show
		@ibeacon = Ibeacon.find_by_beacon_id(params[:id])
		#redirect_to root_path if @ibeacon.nil?
		@ibeacon.to_json()



		    #respond_to do |format|
		      # format.json { render :json => @ibeacon }
				#render :json => @ibeacon
				#render json: @ibeacon
		       #format.html # show.html.erb
		    #end		
		
		#format.json { render json: @user, :except=>  [:password, :password_confirm] }
		#format.json { render json: @user }
		#respond_with @ibeacon       # added to respond with json
	end
	
	private

	  def current_ibeacon
		@ibeacon = Ibeacon.find(params[:id])

	  end  	
	
		 
end