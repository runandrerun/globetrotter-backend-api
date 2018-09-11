class TripLocationSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :trip
  belongs_to :location
end
