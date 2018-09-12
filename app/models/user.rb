# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  username        :string
#  password_digest :string
#  avatar          :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  has_secure_password
  has_many :trips
  # has_many :locations , through: :trips
  validates :username, presence: :true, uniqueness: { case_sensitive: false }

  def ctrips
    arr = []
    self.trips.each do |trip|
      arr2 = []
      trip.locations.each do |location|
        arr2 << location
      end
      arr << {trip_id: trip.id,
              title: trip.title,
              description: trip.description,
              start_date: trip.start_date,
              end_date: trip.end_date,
              user_id: trip.user_id,
         locations: arr2}
    end
    arr
  end


end
