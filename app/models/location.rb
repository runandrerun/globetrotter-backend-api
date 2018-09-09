class Location < ApplicationRecord
  has_many :events
  has_many :trips, through: :trip_locations
end
