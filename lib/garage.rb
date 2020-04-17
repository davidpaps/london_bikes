

class Garage

  attr_reader :workshop

 def initialize
  @workshop = []
 end

 def unload_bike(bike)
  @workshop << bike
 end
 
  def fix_bike
    @workshop[-1].fix
  end

  def load_bike
    @workshop.pop
  end
end