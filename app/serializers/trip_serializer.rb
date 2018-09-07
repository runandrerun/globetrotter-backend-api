class TripSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :all_trips, :destinations, :start_date, :end_date
end
