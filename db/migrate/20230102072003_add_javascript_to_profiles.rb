class AddJavascriptToProfiles < ActiveRecord::Migration[6.1]
  def change
    add_column :profiles, :javascript, :boolean
  end
end
