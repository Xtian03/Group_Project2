class User < ApplicationRecord
  has_secure_password
  has_and_belongs_to_many :services
  has_many :pets
  has_many :bookings
  belongs_to :user
 acts_as_votable
end
