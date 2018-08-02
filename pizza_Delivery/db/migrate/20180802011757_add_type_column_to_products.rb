class AddTypeColumnToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :ype, :string
  end
end
