class TripSerializer < ActiveModel::Serializer
  attributes: :id, :title, :description, :start_date, :end_date, :user_id
end
