class ProfilesController < ApplicationController
  def index
    @profiles = Profile.all 
  end

  def new
    @profile = Profile.new
  end

  def show 
    @profile = Profile.find_by(params[:id])
  end
end
