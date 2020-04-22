# frozen_string_literal: true

class Garage
  attr_reader :bikes, :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def unload_bike(bike)
    @bikes << bike
  end

  def fix_bike
    @bikes[-1].fix
  end

  def load_bike
    @bikes.pop
  end
end
