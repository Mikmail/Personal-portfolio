class AddNumberToProfile < ActiveRecord::Migration[6.1]
  def change
    add_column :profiles, :number, :integer
  end
end
