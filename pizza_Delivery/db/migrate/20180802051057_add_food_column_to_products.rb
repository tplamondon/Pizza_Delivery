class AddFoodColumnToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :food, :integer
  end
end
