class Destination < ApplicationRecord
  has_many :trips, through :trip_destination
  has_many :events, through: :trips
  has_many :users, through: :trips
end
