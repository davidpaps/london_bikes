# frozen_string_literal: true

require_relative 'bike'

class DockingStation
  attr_reader :dock

  def initialize
    @dock = []
  end

  def release_bike
   fail 'no bikes avaliable' if @dock.length <=0 
   @dock.pop
  end

  def dock_bike(bike)
    fail 'dock full' if @dock.length >= 10
    @dock << bike
  end
end
