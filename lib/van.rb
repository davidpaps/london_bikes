require_relative 'garage'

class Van

  attr_reader :trailer, :garage

  def initialize(garage = Garage.new)
    @trailer = []
    @garage = garage
  end

  def pick_up(bike)
    @garage.fix_bike(bike)
    @trailer << bike
  end

  def drop_off(bike)
    @trailer.pop
  end
end