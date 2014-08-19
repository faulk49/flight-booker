# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Airports
nyc = Airport.create(code: "NYC")
sfo = Airport.create(code: "SFO")
lax = Airport.create(code: "LAX")

# Flights
lax_sfo = Flight.create(from_airport_id: lax.id, to_airport_id: sfo.id, start_time: 1.hour.from_now, duration: 2.hours)

nyc_sfo = Flight.create(from_airport_id: nyc.id, to_airport_id: sfo.id, start_time: 1.hour.from_now, duration: 2.hours)
sfo_nyc = Flight.create(from_airport_id: sfo.id, to_airport_id: nyc.id, start_time: 2.hours.from_now, duration: 2.hours)
nyc_lax = Flight.create(from_airport_id: nyc.id, to_airport_id: lax.id, start_time: 1.day.from_now, duration: 3.hours)
lax_nyc = Flight.create(from_airport_id: lax.id, to_airport_id: nyc.id, start_time: 2.days.from_now, duration: 3.hours)
nyc_sfo = Flight.create(from_airport_id: nyc.id, to_airport_id: sfo.id, start_time: 3.days.from_now, duration: 2.hours)
