require_relative 'garage'

class Van

  attr_reader :trailer, :garage

  def initialize(garage = Garage.new)
    @trailer = []
    @garage = garage
  end

  def pick_up_broken(bike)
    @trailer << bike
  end

  def drop_off_broken
    @garage.unload_bike(@trailer.pop)
  end

  def pick_up_fixed
    @trailer << @garage.load_bike
  end

  def drop_off_fixed
    @trailer.pop
  end

end