class AddBodyFiledForPhotos < ActiveRecord::Migration[5.0]
  def change
    add_column :photos, :body, :text
  end
end
