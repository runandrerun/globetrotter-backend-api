# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'dre', password: '123', avatar: 'img')
Location.create(start: "London, England", next: 'Dublin, Ireland', end: 'Edinburgh, Scotland')
Event.create(title: 'The Shard', description: 'Saw the Shard today!', images: 'img_url', video: '' )
Trip.create(title: "Europe!", description: "Traveled Europe!", start_date: 'Feb 14th 2017', end_date: 'March 29th 2017', user_id: 1, event_id: 1, location_id: 1)
