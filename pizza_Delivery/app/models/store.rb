class Store < ApplicationRecord
  scope :id, -> (id) { where id: id }
  scope :street_address, -> (street_address) { where street_address: street_address }
  scope :city, -> (city) { where city: city }
  scope :province, -> (province) { where province: province }
  scope :zipCode, -> (zipCode) { where zipCode: zipCode }

end
