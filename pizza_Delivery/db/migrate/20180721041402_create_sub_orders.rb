class CreateSubOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :sub_orders do |t|
      t.integer :quantity
      t.references :order, foreign_key: true
      t.references :menuitem, foreign_key: true

      t.timestamps
    end
  end
end
