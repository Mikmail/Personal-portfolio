class AddItGovernanceToProfile < ActiveRecord::Migration[6.1]
  def change
    add_column :profiles, :it_governance, :boolean
  end
end
