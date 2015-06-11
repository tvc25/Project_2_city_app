# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

City.delete_all
Venue.delete_all
Event.delete_all
Trip.delete_all

c1 = City.create!(name: "London", population:8308000 )
c2 = City.create!(name: "Madrid", population:3234000)
c3 = City.create!(name: "Paris", population:2244000)
c4 = City.create!(name: "Tokyo", population:13350000)
c5 = City.create!(name: "Miami", population:417650 )
c6 = City.create!(name: "New York", population:8406000 )
c7 = City.create!(name: "Barcelona", population:1621000 )
c8 = City.create!(name: "Los Angeles", population:3884000 )
c9 = City.create!(name: "Toronto", population:2615000 )
c10 = City.create!(name: "Berlin", population:3375000)

v1 = Venue.create!(name: "Hammersmith Appollo")
v2 = Venue.create!(name: "Hyde Park")
v3 = Venue.create!(name: "Brixton Academy")
v4 = Venue.create!(name: "Hello Tokyo")
v5 = Venue.create!(name: "Workout")
v6 = Venue.create!(name: "Spinning")
v7 = Venue.create!(name: "Dining")
v8 = Venue.create!(name: "Dining")
v9 = Venue.create!(name: "Dining")
v10 = Venue.create!(name: "Dining")
v11 = Venue.create!(name: "Dining")
v12 = Venue.create!(name: "Dining")
v13 = Venue.create!(name: "Drinking")
v14 = Venue.create!(name: "Music")

e1 = Event.create!(name: "Glastonbury")

t1 = Trip.create!(from:'10/10/2015', to:'15/10/2015', location: 'London')
t2 = Trip.create!(from:'1/8/2015', to:'15/8/2015', location: 'Madrid')
t3 = Trip.create!(from:'10/9/2015', to:'25/9/2015', location: 'Paris')