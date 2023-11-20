!# /usr/bin/env ruby

require_relative 'bike'

bike = Bike.new(1, :pink, 99.99)
cargo = Cargo_Items.new(1, bike)

cargo.add_cargo(:apples)
cargo.add_cargo(:water)
cargo.add_cargo(:repair_kit)

puts "Space for #{cargo.pannier_remaining_capacity} items left."

bike.rent!
