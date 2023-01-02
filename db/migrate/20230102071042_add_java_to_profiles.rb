class AddJavaToProfiles < ActiveRecord::Migration[6.1]
  def change
    add_column :profiles, :java, :boolean
  end
end
