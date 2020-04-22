# frozen_string_literal: true

require_relative 'garage'

class Van
  attr_reader :bikes, :garage, :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY, garage = Garage.new)
    @capacity = capacity
    @bikes = []
    @garage = garage
  end

  def pick_up_broken(bike)
    @bikes << bike
  end

  def drop_off_broken
    @garage.unload_bike(@bikes.pop)
  end

  def pick_up_fixed
    @bikes << @garage.load_bike
  end

  def drop_off_fixed
    @bikes.pop
  end
end
