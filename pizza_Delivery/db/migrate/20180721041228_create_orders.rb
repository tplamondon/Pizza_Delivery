class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.decimal5 :ctotal_cost
      t.decimal2 :ctotal_cost
      t.decimal5 :tips
      t.decimal2 :tips
      t.decimal :feedback
      t.string :add_comments
      t.references :customer, foreign_key: true
      t.references :store, foreign_key: true
      t.references :driver, foreign_key: true

      t.timestamps
    end
  end
end
