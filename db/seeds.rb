# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Ride.destroy_all
Destination.destroy_all
Seat.destroy_all


driver = User.create name: 'Luke', address: '12 Test Rd', password: 'chicken'
passenger = User.create name: 'Shaila', address: '11 Test Rd', password: 'chicken'

r = Ride.create spaces: 3, day: :monday, start_time: '9:00'

seat = passenger.seats.create  # seat = Seat.create
seat.ride = r
seat.save

dest = Destination.create name: 'ga', address: 'York Street'

driver.rides << r

driver.destination = dest
driver.save
