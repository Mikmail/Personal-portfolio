class UsersController < ApplicationController
  before_action :set_user, except: [:index]

  def idex 
    @users = User.all 
  end 

  def show;end 

  def set_user 
    @user = User.find(params[:id]) 
  end 
end
