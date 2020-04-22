# frozen_string_literal: true

require_relative 'bike'
require_relative 'bike_container'

class DockingStation
  include BikeContainer

  attr_reader :bikes

  def release_bike
    raise 'No bikes avaliable' if working_bikes.empty?
    bikes.delete(working_bikes.pop)
  end

  def dock_bike(bike)
    add_bike(bike)
  end

  private

  def working_bikes
    bikes.reject { |bike| !bike.working? }
  end

end
