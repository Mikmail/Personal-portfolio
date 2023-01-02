class AddCToProfiles < ActiveRecord::Migration[6.1]
  def change
    add_column :profiles, :c, :boolean
  end
end
