class LocationSerializer < ActiveModel::Serializer
  attributes :id, :city, :state, :country, :lng, :lat
end
