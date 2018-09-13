class TripLocationSerializer < ActiveModel::Serializer
  attributes :id, :location_id, :trip_id
  belongs_to :trip
  belongs_to :location
end
