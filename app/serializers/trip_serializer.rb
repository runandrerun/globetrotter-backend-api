# == Schema Information
#
# Table name: trips
#
#  id           :bigint(8)        not null, primary key
#  title        :string
#  description  :string
#  start_date   :date
#  end_date     :date
#  destinations :json
#  all_trips    :integer
#  user_id      :integer
#  event_id     :integer
#  location_id  :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class TripSerializer < ActiveModel::Serializer
<<<<<<< HEAD
  attributes :id, :title, :description, :start_date, :end_date, :user_id
=======
  attributes :id, :title, :description, :start_date, :end_date, :user_id, :locations

>>>>>>> d300ecf8065a347c2531f2c99dafc690621bc7e9
  has_many :locations
end
