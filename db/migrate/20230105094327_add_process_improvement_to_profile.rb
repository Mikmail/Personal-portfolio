class AddProcessImprovementToProfile < ActiveRecord::Migration[6.1]
  def change
    add_column :profiles, :process_improvement, :boolean
  end
end
