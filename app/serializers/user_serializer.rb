class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :avatar

  has_many :trips, serializer: TripSerializer, include_nested_associations: true
  has_many :locations, serializer: LocationSerializer, include_nested_associations: true
  has_many :events, serializer: EventSerializer, include_nested_associations: true
end
