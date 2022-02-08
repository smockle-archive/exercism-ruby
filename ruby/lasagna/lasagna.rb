# frozen_string_literal: true

# Helper methods for cooking a brilliant lasagna.
class Lasagna
  EXPECTED_MINUTES_IN_OVEN = 40
  EXPECTED_MINUTES_PER_LAYER = 2

  def remaining_minutes_in_oven(actual_minutes_in_oven)
    [EXPECTED_MINUTES_IN_OVEN - actual_minutes_in_oven, 0].max
  end

  def preparation_time_in_minutes(layers)
    layers * EXPECTED_MINUTES_PER_LAYER
  end

  def total_time_in_minutes(number_of_layers:, actual_minutes_in_oven:)
    preparation_time_in_minutes(number_of_layers) + actual_minutes_in_oven
  end
end
