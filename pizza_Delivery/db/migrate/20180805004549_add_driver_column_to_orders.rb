class AddDriverColumnToOrders < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :driver, foreign_key: true
  end
end
