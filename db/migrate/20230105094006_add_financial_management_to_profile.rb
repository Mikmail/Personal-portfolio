class AddFinancialManagementToProfile < ActiveRecord::Migration[6.1]
  def change
    add_column :profiles, :financial_management, :boolean
  end
end
