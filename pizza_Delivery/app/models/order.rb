class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :store
  belongs_to :driver
end
