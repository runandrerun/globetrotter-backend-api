class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :images
end
