class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.string :title
      t.string :src
      t.string :content

      t.timestamps
    end
  end
end
