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

require 'test_helper'

class TripTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
