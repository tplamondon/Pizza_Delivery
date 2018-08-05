class AddStoreIdColumnToOrders < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :store_id, foreign_key: true
  end
end
