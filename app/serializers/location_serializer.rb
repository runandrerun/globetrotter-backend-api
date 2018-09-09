class LocationSerializer < ActiveModel::Serializer
  attributes :id, :name, :city, :state, :country, :lng, :lat
end
