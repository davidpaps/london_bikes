# frozen_string_literal: true

require_relative 'bike'

class DockingStation
  attr_reader :dock

  def initialize
    @dock = []
  end

  def release_bike
    @dock.pop
  end

  def dock_bike(bike)
    @dock << bike
  end
end
