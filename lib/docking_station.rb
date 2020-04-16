# frozen_string_literal: true

require_relative 'bike'

class DockingStation
  attr_reader :dock

  CAPACITY = 20

  def initialize
    @dock = []
  end

  def release_bike
   fail 'no bikes avaliable' if @dock.length <=0 
   @dock.pop
  end

  def dock_bike(bike)
    fail 'dock full' if @dock.length >= CAPACITY
    @dock << bike
  end
end
