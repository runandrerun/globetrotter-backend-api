# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'geolocations'

def tooDeep
  sample = @geolocations.sample(10)
  sample.map do |location|
    Location.create(city: location[:city_ascii], state: location[:admin_name], country: location[:country], lng: location[:lng], lat: location[:lat])
  end
end

User.create(username:"DreDaBeast", password: '123', avatar: 'url')

Trip.create(title: "Adventure through Europe!", description: "Backpacked through Europe", start_date: '2-14-2018', end_date: '2-25-2018', destinations:, all_trips: 6, user_id: 1, event_id: 1, location_id: 1)

puts tooDeep
