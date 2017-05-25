class User < ApplicationRecord
  has_secure_password
  has_and_belongs_to_many :services
  has_many :pets
  has_many :bookings

  geocoded_by :location
  after_validation :geocode
end
