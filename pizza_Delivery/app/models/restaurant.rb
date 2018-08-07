class Restaurant < ApplicationRecord
  scope :id, -> (id) { where id: id }
  scope :email, -> (email) { where email: email }
  scope :pname, -> (name) { where name: name }
  scope :phoneNumber, -> (phoneNumber) { where phoneNumber: phoneNumber }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
