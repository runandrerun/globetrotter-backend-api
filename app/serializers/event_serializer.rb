# == Schema Information
#
# Table name: events
#
#  id          :bigint(8)        not null, primary key
#  title       :string
#  description :string
#  images      :string
#  video       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :img_url, :video_url, :start_date, :end_date,
  :location_id
  belongs_to :location
end
