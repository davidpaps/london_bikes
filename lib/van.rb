require_relative 'garage'

class Van

  attr_reader :trailer, :garage

  def initialize(garage = Garage.new)
    @trailer = []
    @garage = garage
  end

  def pick_up(bike)
    @trailer << bike
  end

  def drop_off(bike)
    @garage.unload_bike(@trailer.pop)
  end
end