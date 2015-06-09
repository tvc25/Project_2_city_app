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

c1 = City.create!(name: "London")
c2 = City.create!(name: "Madrid")
c3 = City.create!(name: "Paris")
c4 = City.create!(name: "Tokyo")
c5 = City.create!(name: "Miami")
c6 = City.create!(name: "New York")
c7 = City.create!(name: "Barcelona")
c8 = City.create!(name: "Los Angeles")
c9 = City.create!(name: "Toronto")
c10 = City.create!(name: "Berlin")

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