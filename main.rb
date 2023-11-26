!# /usr/bin/env ruby

require_relative 'bike'
require_relative 'rental'
require_relative 'luggage'

items = [:apple, :water, :protein_bar]

luggage = Luggage.new(200, items, nil)

bike = Bike.new(1, :pink, 99.99, luggage)

luggage.set_bike(bike)

rental = Rental.new(bike)

puts "Total Price: #{rental.price}, Total Weight: #{rental.weight}"

