class AddIntroToProfiles < ActiveRecord::Migration[6.1]
  def change
    add_column :profiles, :intro, :string
  end
end
