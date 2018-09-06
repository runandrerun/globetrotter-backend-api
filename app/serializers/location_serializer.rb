class LocationSerializer < ActiveModel::Serializer
  attributes :id, :start, :next, :end
end
