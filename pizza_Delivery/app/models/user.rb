class User < ApplicationRecord
  scope :id, -> (id) { where id: id }
  scope :email, -> (email) { where email: email }
  scope :pname, -> (name) { where name: name }
  scope :province, -> (province) { where province: province }
  scope :zipCode, -> (zipCode) { where phoneNumber: zipCode }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
