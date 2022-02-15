# frozen_string_literal: true

# Parser used to process log lines
class LogLineParser
  LOG_LEVEL = { info: 'INFO', warning: 'WARNING', error: 'ERROR' }.freeze

  def initialize(line)
    @line = line
  end

  # Return a log line's message, removing any leading or trailing whitespace
  def message
    return unless (match = @line.match(/\[(#{LOG_LEVEL.values.join("|")})\]: (?<message>.*)/))

    match['message']&.strip
  end

  # Return a log line's log level, in lowercase
  def log_level
    return unless (match = @line.match(/\[(?<log_level>#{LOG_LEVEL.values.join("|")})\]/))

    match['log_level']&.downcase
  end

  # Reformat the log line, putting the message first and the log level after it in parentheses
  def reformat
    "#{message} (#{log_level})"
  end
end
