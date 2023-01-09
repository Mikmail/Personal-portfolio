class CreateFileUploads < ActiveRecord::Migration[6.1]
  def change
    create_table :fileuploads do |t|

      t.timestamps
    end
  end
end
