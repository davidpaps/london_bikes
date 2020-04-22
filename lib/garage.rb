# frozen_string_literal: true

require_relative 'bike_container'

class Garage
  include BikeContainer

  attr_reader :bikes

  def unload_bike(bike)
    add_bike(bike)
  end

  def fix_bike
    @bikes[-1].fix
  end

  def load_bike
    @bikes.pop
  end
end
