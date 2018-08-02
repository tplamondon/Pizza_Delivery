class AddUserIdToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :userId, :integer
  end
end
