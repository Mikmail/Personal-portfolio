class FileUpload < ApplicationRecord
  belongs_to :user
  mount_uploader :avatar, AvatarUploader

  def display_avatar
    avatar.nil? ? "" : avatar
  end
end
