class Product < ActiveRecord::Base
  scope :id, -> (id) { where id: id }
  scope :price, -> (price) { where price: price }
  scope :food, -> (food) { where food: food }
  scope :pname, -> (name) { where name: name }

  has_many :order_items, :dependent => :delete_all

  default_scope { where(active: true) }
end
