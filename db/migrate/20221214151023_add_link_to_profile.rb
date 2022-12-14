class AddLinkToProfile < ActiveRecord::Migration[6.1]
  def change
    add_column :profiles, :link, :string
  end
end
