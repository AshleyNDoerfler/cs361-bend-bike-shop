# Bike

class Bike

  STANDARD_WEIGHT = 200 # lbs

  attr_reader :id, :color, :price, :weight, :luggage

  def initialize(id, color, price, luggage)
    @id = id
    @color = color
    @weight = STANDARD_WEIGHT
    @price = price + (2 * weight)
    @luggage = luggage
  end

end
