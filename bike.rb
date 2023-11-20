class Rent_Bike

  MAX_CARGO_ITEMS = 10

  attr_accessor :id, :rented_bikes, :avaliable_bikes, :cargo_contents

  def initialize(id, rented_bikes=[], avaliable_bikes=[])
    @id = id
    @rented_bikes = rented_bikes
    @avaliable_bikes = avaliable_bikes
    @cargo_contents = []

  def add_avaliable_bike(bike)
    @avaliable_bikes << bike

  def rent_bike(bike)
    @avaliable_bikes.delete(bike)
    @rented_bikes << bike

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
  attr_accessor :id, :color, :price, :weight

  def initialize(id, color, price, weight = STANDARD_WEIGHT)
    @id = id
    @color = color
    @price = price
    @weight = weight

  def rent!
    self.rented = true

  def add_cargo(item)
    self.cargo_contents << item

  def remove_cargo(item)
    self.cargo_contents.remove(item)

  def pannier_capacity
    MAX_CARGO_ITEMS

  def pannier_remaining_capacity
    MAX_CARGO_ITEMS - self.cargo_contents.size

end

class Rent_Bike

  def initialize(avaliable_bikes=[])
    @avaliable_bikes = avaliable_bikes
    @cargo_contents = []

  def add_avaliable_bike(bike)
    @avaliable_bikes << bike

  def rent_bike(bike)
    @avaliable_bikes.delete(bike)
    @rented_bikes << bike

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

  def initialize(id, color, price, weight = STANDARD_WEIGHT)
    @id = id
    @color = color
    @price = price
    @weight = weight

  def change_price(price)
    @price = price
