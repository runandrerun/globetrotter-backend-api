class Event < ApplicationRecord
  has_many :trips
  has_many :users, through: :trips
  has_many :locations, through: :trips
end
