class MoreFieldsForRestaurants < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :name, :string
    add_column :restaurants, :phoneNumber, :string
  end
end
