class AddRailsToProfiles < ActiveRecord::Migration[6.1]
  def change
    add_column :profiles, :rails, :boolean
  end
end
