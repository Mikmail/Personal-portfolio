class AddCssToProfiles < ActiveRecord::Migration[6.1]
  def change
    add_column :profiles, :css, :boolean
  end
end
