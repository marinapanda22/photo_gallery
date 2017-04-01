class ProfilesController < ApplicationController
  def show
  	@users = User.find(params[:id])
  	
  end

  def edit
  end
end
