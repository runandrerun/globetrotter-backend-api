class TripSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :location_id, :event_id, :title, :description, :date

end
