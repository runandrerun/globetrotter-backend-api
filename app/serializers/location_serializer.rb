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

class LocationSerializer < ActiveModel::Serializer
  attributes :id, :name, :lng, :lat
  has_many :trips
  has_many :events
end
