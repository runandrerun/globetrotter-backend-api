# == Schema Information
#
# Table name: locations
#
#  id         :bigint(8)        not null, primary key
#  lng        :float
#  lat        :float
#  city       :string
#  state      :string
#  country    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class LocationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
