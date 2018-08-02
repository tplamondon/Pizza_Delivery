class AddImageSrcToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :image_src, :string
  end
end
