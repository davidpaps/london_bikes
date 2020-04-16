class Van

  attr_reader :trailer

  def initialize
    @trailer = []
  end

  def pick_up_bike(bike)
    @trailer << bike
  end
end