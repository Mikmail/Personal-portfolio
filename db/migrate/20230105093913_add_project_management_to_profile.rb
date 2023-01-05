class AddProjectManagementToProfile < ActiveRecord::Migration[6.1]
  def change
    add_column :profiles, :project_management, :boolean
  end
end
