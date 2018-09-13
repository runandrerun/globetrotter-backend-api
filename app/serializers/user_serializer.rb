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
#9

class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :avatar_url, :trips
  has_many :trips
  has_many :locations, through: :trips
end
