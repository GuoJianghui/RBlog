class AddInfoThumbImgTypeToPost < ActiveRecord::Migration
  def change
    add_column :posts, :info, :string
    add_column :posts, :thumb, :string
    add_column :posts, :img, :string
    add_column :posts, :post_type, :string
  end
end
