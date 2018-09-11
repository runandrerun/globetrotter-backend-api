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
#
# def tooDeep
#   sample = @geolocations.sample(50)
#   sample.map do |location|
#     Location.create(city: location[:city_ascii], state: location[:admin_name], country: location[:country], lng: location[:lng], lat: location[:lat])
#   end
#   if sample.length == 50
#     User.create(username:"DreDaBeast", password: '123', avatar: 'url')
#     Event.create(title: 'Day 1!', description: 'Backpacking!', images: 'url', video: 'url')
#     trip = Trip.create(title: "Adventure through Europe!", description: "Backpacked through Europe", start_date: '2-14-2018', end_date: '2-25-2018', destinations: [], all_trips: 6, user_id: 1, event_id: 1, location_id: 1)
#
#     trip[:destinations] << Location.find(1)
#     trip[:destinations] << Location.find(24)
#     trip[:destinations] << Location.find(30)
#     trip[:destinations] << Location.find(20)
#     trip[:destinations] << Location.find(10)
#     trip.save
#   end
# end
#
# puts tooDeep

User.create(username: "beast", password: '123', avatar_url: "https://raw.githubusercontent.com/Ashwinvalento/cartoon-avatar/master/lib/images/female/68.png")

Trip.create(title: "Euro Trip 2019", description: "My trip around Europe", start_date: Time.at(rand * Time.now.to_i), end_date: Time.at(rand * Time.now.to_i), user_id: 1 )

Event.create(title: "Exploring Europe", description: "walked around Europe", start_date: Time.at(rand * Time.now.to_i), end_date: Time.at(rand * Time.now.to_i), img_url: "", video_url: "", location_id: 1)

Location.create(lat: 40.710662, lng: -74.008980, name: "Eiffel Tower", city: "city", state: "state", country: "France")
Location.create(lat: 40.701074, lng: -73.987064, name: "Berlin Wall", city: "city", state: "state", country: "Germany")
Location.create(lat: 40.707181, lng: -74.003916, name: "Colosseum", city: "city", state: "state", country: "Italy")

TripLocation.create(location_id: 1, trip_id: 1)
TripLocation.create(location_id: 2, trip_id: 1)
TripLocation.create(location_id: 3, trip_id: 1)

def seedGeo
  @geolocations.map do |location|
    Location.create(name: location[:city_ascii], city: location[:city_ascii], state: location[:admin_name], country: location[:country], lng: location[:lng], lat: location[:lat])
  end
end
