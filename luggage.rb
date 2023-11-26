class Luggage

  DEFAULT_MAX_CAPACITY = 10

  attr_reader :items :bike

  def initialize(initial_capacity, items, bike)
    @capacity = initial_capacity
    @items = items
    @bike = bike
  end

  def add(item)
    self.items << item
  end

  def weight
    self.items.size * 10
  end

  def set_bike(bike)
    self.bike << bike
  end

end
