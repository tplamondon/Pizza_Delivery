class AddDriverIdColumnToOrders < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :driver_id, foreign_key: true
  end
end
