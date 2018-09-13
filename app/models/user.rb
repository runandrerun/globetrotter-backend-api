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
  has_many :locations , through: :trips
  validates :username, presence: :true, uniqueness: { case_sensitive: false }

  


end
