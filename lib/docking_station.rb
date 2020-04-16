# frozen_string_literal: true

require_relative 'bike'

class DockingStation
  attr_reader :dock

  def initialize(bike = Bike.new)
    @bike = bike
    @dock = []
  end

  def release_bike
    @bike
  end

  def dock_bike(bike)
    @dock << bike
  end
end
