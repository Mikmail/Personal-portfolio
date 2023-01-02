class AddRToProfiles < ActiveRecord::Migration[6.1]
  def change
    add_column :profiles, :r, :boolean
  end
end
