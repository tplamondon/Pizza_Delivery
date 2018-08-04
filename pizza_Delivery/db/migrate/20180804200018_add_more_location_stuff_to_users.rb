class AddMoreLocationStuffToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :streetAddress, :string
    add_column :users, :city, :string
    add_column :users, :province, :string
    add_column :users, :zipCode, :string
  end
end
