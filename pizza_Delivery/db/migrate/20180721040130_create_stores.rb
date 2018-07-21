class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.string :street_address
      t.string :city
      t.string :province
      t.string :phone_number

      t.timestamps
    end
  end
end
