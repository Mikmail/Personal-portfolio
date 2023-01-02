class AddHtmlToProfiles < ActiveRecord::Migration[6.1]
  def change
    add_column :profiles, :html, :boolean
  end
end
