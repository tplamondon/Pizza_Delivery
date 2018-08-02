class RemoveYpeFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :ype, :string
  end
end
