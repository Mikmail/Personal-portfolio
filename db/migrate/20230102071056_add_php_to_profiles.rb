class AddPhpToProfiles < ActiveRecord::Migration[6.1]
  def change
    add_column :profiles, :php, :boolean
  end
end
