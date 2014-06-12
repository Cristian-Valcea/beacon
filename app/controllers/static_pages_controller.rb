class StaticPagesController < ApplicationController
  def home
	@ibeacon = current_user.ibeacons.build if signed_in?
  end

  def help
  end

  def contact
  end
end
