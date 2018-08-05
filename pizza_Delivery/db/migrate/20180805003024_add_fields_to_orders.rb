class AddFieldsToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :streetAddress, :string
    add_column :orders, :city, :string
    add_column :orders, :province, :string
    add_column :orders, :foodRating, :integer
    add_column :orders, :driverRating, :integer
    add_column :orders, :store, :references
    add_column :orders, :driver, :references
  end
end
