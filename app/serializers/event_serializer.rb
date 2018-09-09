class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :img_url, :video_url, :start_date, :end_date,
  :location_id
  belongs_to :location
end
