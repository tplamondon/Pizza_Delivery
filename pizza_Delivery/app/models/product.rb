class Product < ActiveRecord::Base
  has_many :order_items, :dependent => :delete_all

  default_scope { where(active: true) }
end
