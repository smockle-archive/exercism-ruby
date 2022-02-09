# frozen_string_literal: true

# Model for a person visiting an amusement park
class Attendee
  # @dynamic height, pass_id
  attr_reader :height
  attr_reader :pass_id

  def initialize(height)
    @height = height
  end

  def issue_pass!(pass_id)
    @pass_id = pass_id
  end

  def revoke_pass!
    @pass_id = nil
  end
end
