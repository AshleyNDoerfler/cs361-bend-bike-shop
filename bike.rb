class Cargo_Items

  MAX_CARGO_ITEMS = 10

  attr_accessor :id, :bike, :cargo_contents

  def initialize(id, bike)
    @id = id
    @bike = bike
    @cargo_contents = []

  def add_avaliable_bike(bike)
    @avaliable_bikes << bike

  def rent_bike(bike)
    @avaliable_bikes.delete(bike)
    @rented_bikes << bike
    add_cargo(bike)

  def return_bike(bike)
    @rented_bikes.delete(bike)
    @avaliable_bikes << bike

  def add_cargo(item)
    self.cargo_contents << item

  def remove_cargo(item)
    self.cargo_contents.remove(item)

  def pannier_capacity
    MAX_CARGO_ITEMS

  def pannier_remaining_capacity
    MAX_CARGO_ITEMS - self.cargo_contents.size

end

class Bike

  STANDARD_WEIGHT = 200 # lbs
  attr_accessor :id, :color, :price, :weight, :rented

  def initialize(id, color, price, weight = STANDARD_WEIGHT, rented=false)
    @id = id
    @color = color
    @price = price
    @weight = weight
    @rented = rented

  def rent_bike
    @rented = true
