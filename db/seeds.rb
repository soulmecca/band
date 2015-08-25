# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Group.create({name: "Soulmecca", genre: "soul", explicit_lyric: false})

Venue.create({name: "General Assembly", city: "New York", state: "NY", family_friendly: true})

Event.create({date: "Nov.18th", alcohol_served: true, venue_id:1, group_id:1})


