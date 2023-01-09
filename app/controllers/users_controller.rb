class UsersController < ApplicationController
  before_action :set_user

  def index 
    @users = User.all 
  end 

  def show;end 

  def update 

    if @user.update
      redirect_to user_path(current_user.username)
    else 
      render :edit 
    end 
  end

  def download_avatar
    @profile = Profile.find(params[:id])
    send_file @profile.avatar.path, disposition: 'attachment'
  end

  def set_user 
    @user = User.friendly.find_by_username(params[:id]) 
  end 
end
