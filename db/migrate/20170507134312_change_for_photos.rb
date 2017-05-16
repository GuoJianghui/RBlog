class ChangeForPhotos < ActiveRecord::Migration[5.0]
  def change
    add_column :photos, :width, :decimal
    add_column :photos, :height, :decimal
  end
end
