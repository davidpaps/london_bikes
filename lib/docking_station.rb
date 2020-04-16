# frozen_string_literal: true

require_relative 'bike'
require_relative 'van'

class DockingStation
  attr_reader :dock, :capacity, :van

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY, van = Van.new)
    @dock = []
    @capacity = capacity
    @van = van
  end

  def release_bike
    raise 'no bikes avaliable' if empty? || broken?
    broken? ? @van.pick_up_bike(@dock.pop) : @dock.pop
  end

  def dock_bike(bike)
    raise 'dock full' if full?
    @dock << bike
  end

  private

  def full?
    @dock.length >= DEFAULT_CAPACITY
  end

  def empty?
    @dock.length <= 0
  end

  def broken?
    !@dock[-1].working? 
  end
end
