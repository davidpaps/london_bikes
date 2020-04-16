# frozen_string_literal: true

require_relative 'bike'

class DockingStation
  attr_reader :dock, :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @dock = []
    @capacity = capacity
  end

  def release_bike
   fail 'no bikes avaliable' if empty?
   @dock.pop
  end

  def dock_bike(bike)
    fail 'dock full' if full?
    @dock << bike
  end

  private

  def full?
    @dock.length >= DEFAULT_CAPACITY
  end

  def empty?
    @dock.length <= 0
  end
end
