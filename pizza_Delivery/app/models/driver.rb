class Driver < ApplicationRecord
  scope :id, -> (id) { where id: id }
  scope :email, -> (id) { where email: email }
  scope :dname, -> (id) { where name: id }
  scope :phoneNumber, -> (id) { where phoneNumber: id }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
