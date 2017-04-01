class ProfilesController < ApplicationController
  def show
  	@user = User.find(params[:id])
  	@galleries = User.find(params[:id]).galleries
  end

  def edit
  end
end
