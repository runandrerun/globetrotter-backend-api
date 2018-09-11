# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

require 'usa'


User.create(username: "beast", password: '123', avatar_url: "https://raw.githubusercontent.com/Ashwinvalento/cartoon-avatar/master/lib/images/female/68.png")

Trip.create(title: "Euro Trip 2019", description: "My trip around Europe", start_date: Time.at(rand * Time.now.to_i), end_date: Time.at(rand * Time.now.to_i), user_id: 1 )

Event.create(title: "Exploring Europe", description: "walked around Europe", start_date: Time.at(rand * Time.now.to_i), end_date: Time.at(rand * Time.now.to_i), img_url: "", video_url: "", location_id: 1)

Location.create(lat: 40.710662, lng: -74.008980, name: "Eiffel Tower")
Location.create(lat: 40.701074, lng: -73.987064, name: "Berlin Wall")
Location.create(lat: 40.707181, lng: -74.003916, name: "Colosseum")

TripLocation.create(location_id: 1, trip_id: 1)
TripLocation.create(location_id: 2, trip_id: 1)
TripLocation.create(location_id: 3, trip_id: 1)

# def seedGeo
#    @usa.map do |location|
#     Location.create(name: location[:city_ascii], city: location[:city_ascii], state: location[:admin_name], country: location[:country], lng: location[:lng], lat: location[:lat])
#   end
# end
#
# seedGeo
