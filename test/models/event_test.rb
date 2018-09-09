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

require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
