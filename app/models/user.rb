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
  has_secure_token :auth_token
  has_many :trips

  validates :username, presence: :true, uniqueness: :true

  def invalidate_token
    self.update_columns(auth_token: nil)
  end

  def self.validate_login(username, password)
    user = find_by(username: username)
    if user && user.authenticate(password)
      user
    end
  end

end
