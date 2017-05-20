class User < ApplicationRecord
  has_many :ratings
  has_many :bookings
  has_many :pets
  has_many :services
end
