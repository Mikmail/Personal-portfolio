class AddResearchToProfile < ActiveRecord::Migration[6.1]
  def change
    add_column :profiles, :research, :boolean
  end
end
