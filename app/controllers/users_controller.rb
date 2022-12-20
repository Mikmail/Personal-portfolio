class UsersController < ApplicationController
  before_action :set_user

  def index 
    @users = User.all 
  end 

  def show;end 

  def set_user 
    @user = User.friendly.find_by_username(params[:id]) 
  end 
end
