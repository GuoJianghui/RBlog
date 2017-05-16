class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :title
      t.string :src
      t.string :content

      t.timestamps
    end
  end
end
