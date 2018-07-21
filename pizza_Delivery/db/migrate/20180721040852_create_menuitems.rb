class CreateMenuitems < ActiveRecord::Migration[5.2]
  def change
    create_table :menuitems do |t|
      t.string :name
      t.string :description
      t.decimal5 :price
      t.decimal2 :price
      t.string :image_path

      t.timestamps
    end
  end
end
