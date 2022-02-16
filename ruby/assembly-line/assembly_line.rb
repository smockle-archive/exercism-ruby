# frozen_string_literal: true

# Analyze the production of an assembly line in a car factory.
class AssemblyLine
  MAX_CARS_PER_HOUR = 221

  SUCCESS_RATE = {
    1..4 => 1.0,
    5..8 => 0.9,
    9 => 0.8,
    10 => 0.77
  }.freeze

  def initialize(speed)
    @speed = speed
  end

  # Calculate the assembly line's production rate per hour, taking into account its success rate.
  # Note that the value returned is an instance of Float.
  def production_rate_per_hour
    return unless (__success_rate__ = success_rate)

    MAX_CARS_PER_HOUR * @speed * __success_rate__
  end

  # Calculate how many completed, working cars are produced per minute.
  # Note that the value returned is an instance of Integer.
  def working_items_per_minute
    return unless (__production_rate_per_hour__ = production_rate_per_hour)

    (__production_rate_per_hour__ / 60).floor
  end

  private

  # Calculate the assembly line’s success_rate, taking into account its speed.
  def success_rate
    return unless (success_rate = (SUCCESS_RATE.select do |k|
      (k.is_a?(Integer) && k == @speed) || (k.is_a?(Range) && k.include?(@speed))
    end))

    success_rate.values.first
  end
end
