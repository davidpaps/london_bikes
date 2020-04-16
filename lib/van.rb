class Van

  attr_reader :trailer

  def initialize
    @trailer = []
  end

  def pick_up(bike)
    @trailer << bike
  end

  def drop_off(bike)
    @trailer.pop
  end
end