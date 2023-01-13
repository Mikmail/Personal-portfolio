class AddAvatarToFileUploads < ActiveRecord::Migration[6.1]
  def change
    add_column :file_uploads, :avatar, :string
  end
end
