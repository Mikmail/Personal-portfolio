class AddTypescriptToProfiles < ActiveRecord::Migration[6.1]
  def change
    add_column :profiles, :typescript, :boolean
  end
end
