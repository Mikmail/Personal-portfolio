class AddPythonToProfiles < ActiveRecord::Migration[6.1]
  def change
    add_column :profiles, :python, :boolean
  end
end
