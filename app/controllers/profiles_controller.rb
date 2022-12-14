class ProfilesController < ApplicationController
  before_action :require_login 

  def new 
    @profile = Profile.new 
  end 

  def create 
    @profile = current_user.build_profile(profile_params)

    if @profile.save 
      redirect_to user_path(current_user)
    else 
      render :new 
    end 
  end

  def edit
    @profile = Profile.find_by(user_id: current_user.id)
  end 

  def index
    @profiles = Profile.all 
  end

  def update 
    @profile = Profile.find_by(user_id: current_user.id)

    if @profile.update(profile_params)
      redirect_to user_path(current_user)
    else 
      render :edit 
    end 
  end

  def show 
    @profile = Profile.find_by(params[:id])
  end

  private 

  def require_login
    unless current_user 
      redirect_to new_user_session_path
    end
  end

  def profile_params 
    params.require(:profile).permit(:name, :intro, :role, :link)
  end

end
