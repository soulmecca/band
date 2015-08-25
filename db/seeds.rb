# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

soulmecca = Group.create({name: "Soulmecca", genre: "soul", explicit_lyric	: false})
beatles = Group.create({name: "The Beatles", genre: "rock", explicit_lyric	: false})
omi = Group.create({name: "OMI", genre: "rap", explicit_lyric	: false})
weeknd = Group.create({name: "The Weeknd", genre: "soul", explicit_lyric	: false})
silento = Group.create({name: "Silento", genre: "pop", explicit_lyric	: true})


ga = Venue.create({name: "General Assembly", city: "New York", state: "NY", family_friendly: true})
grand = Venue.create({name: "Grand Star Jazz Club", city: "Lod Angeles", state: "CA", family_friendly: true})
howard = Venue.create({name: "Howard Theatre", city: "Washington", state: "DC", family_friendly: true})
webstar = Venue.create({name: "Webster Hall", city: "New York", state: "NY", family_friendly: true})
electric = Venue.create({name: "Electric Factory", city: "Philadelphia", state: "PA", family_friendly: false})


Event.create({date: "2015-07-30", alcohol_served: false, venue_id: ga.id , group_id: soulmecca.id})
Event.create({date: "2015-07-30", alcohol_served: true, venue_id: grand.id, group_id: beatles.id})
Event.create({date: "2015-09-15", alcohol_served: true, venue_id: webster.id, group_id: beatles.id})
Event.create({date: "2015-08-30", alcohol_served: true, venue_id: webster.id, group_id: weeknd.id})
Event.create({date: "2015-09-01", alcohol_served: true, venue_id: electric.id, group_id: silento.id})



