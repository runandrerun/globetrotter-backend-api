# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create(username: 'dre', password: '123', avatar: 'img')
# Location.create(city: "London", state: "",country: "United Kingdom", lng: -0.118092, lat: 51.509865)
# Event.create(title: 'The Shard', description: 'Saw the Shard today!', images: 'img_url', video: '' )
# Trip.create(title: "Europe!", description: "Traveled Europe!", start_date: "2014-1-1", end_date: "2014-1-1", destinations: [], all_trips: 10, user_id: 1, event_id: 1, location_id: 1)
#
#
# 
require 'geolocations'

def tooDeep
  sample = @geolocations.sample(10)
  sample.map do |location|
    Location.create(city: location[:city_ascii], state: location[:admin_name], country: location[:country], lng: location[:lng], lat: location[:lat])
  end
end

puts tooDeep
