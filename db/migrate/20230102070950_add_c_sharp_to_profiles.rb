class AddCSharpToProfiles < ActiveRecord::Migration[6.1]
  def change
    add_column :profiles, :c_sharp, :boolean
  end
end
