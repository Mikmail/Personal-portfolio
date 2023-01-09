class FileUploadController < ApplicationController
  before_action :require_login 

  def new 
    @file_upload = FileUpload.new 
  end 

  def create 
    @file_upload = current_user.build_file_upload(file_upload_params)

    if @file_upload.save 
      redirect_to user_path(current_user.username)
    else 
      render :new 
    end 
  end

  def edit
    @file_upload = file_upload.find_by(user_id: current_user.id)
  end 

  def index
    @file_upload = file_upload.all 
  end

  def update 
    @file_upload = file_upload.find_by(user_id: current_user.id)

    if @file_upload.update(file_upload_params)
      redirect_to user_path(current_user.username)
    else 
      render :edit 
    end 
  end

  def show 
    @file_upload = file_upload.find_by(params[:id])
  end


  private 

  def require_login
    unless current_user 
      redirect_to new_user_session_path
    end
  end

  def file_upload_params 
    params.require(:file_upload).permit(:avatar)
  end
end
