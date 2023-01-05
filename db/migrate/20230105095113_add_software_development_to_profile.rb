class AddSoftwareDevelopmentToProfile < ActiveRecord::Migration[6.1]
  def change
    add_column :profiles, :software_development, :boolean
  end
end
