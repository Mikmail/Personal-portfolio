class AddTeamManagementToProfile < ActiveRecord::Migration[6.1]
  def change
    add_column :profiles, :team_management, :boolean
  end
end
