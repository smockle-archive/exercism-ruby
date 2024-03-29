# frozen_string_literal: true

# Model for a person visiting an amusement park
class Attendee
  def initialize(height)
    @height = height
  end

  def issue_pass!(pass_id)
    @pass_id = pass_id
  end

  def revoke_pass!
    @pass_id = nil
  end

  # Do not edit above methods, add your own methods below.

  # @dynamic height, pass_id
  attr_reader :height
  attr_reader :pass_id

  # rubocop:disable Naming/PredicateName
  def has_pass?
    !@pass_id.nil?
  end
  # rubocop:enable Naming/PredicateName

  def fits_ride?(ride_minimum_height)
    height >= ride_minimum_height
  end

  def allowed_to_ride?(ride_minimum_height)
    has_pass? && fits_ride?(ride_minimum_height)
  end
end
