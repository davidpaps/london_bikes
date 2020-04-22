# frozen_string_literal: true

require_relative 'garage'
require_relative 'bike_container'

class Van
  include BikeContainer

  attr_reader :bikes

  def pick_up(bike)
    add_bike(bike)
  end

  def drop_off
    bikes.pop
  end
end
