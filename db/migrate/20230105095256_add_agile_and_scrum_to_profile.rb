class AddAgileAndScrumToProfile < ActiveRecord::Migration[6.1]
  def change
    add_column :profiles, :agile_and_scrum, :boolean
  end
end
