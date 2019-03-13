class Vanue < ApplicationRecord
  has_many :bookings
  has_many :amenities
  has_many :events
  belongs_to :owner
end
