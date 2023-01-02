class AddRubyToProfiles < ActiveRecord::Migration[6.1]
  def change
    add_column :profiles, :ruby, :boolean
  end
end
