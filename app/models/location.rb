# == Schema Information
#
# Table name: locations
#
#  id         :bigint(8)        not null, primary key
#  lng        :float
#  lat        :float
#  city       :string
#  state      :string
#  country    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Location < ApplicationRecord
  has_many :events
  has_many :trip_locations
  has_many :trips, through: :trip_locations
end
