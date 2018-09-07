class User < ApplicationRecord
  has_many :trips
  has_many :events, through: :trips
  has_many :locations, through: :trips

  validates :username, presence: :true, uniqueness: :true
end
