class RemoveWidthAndHeightForPhotos < ActiveRecord::Migration[5.0]
  def change
    remove_column :photos, :width, :decimal
    remove_column :photos, :height, :decimal
  end
end
