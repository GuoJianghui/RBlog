class AddBodyFiledForPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :body, :text
  end
end
