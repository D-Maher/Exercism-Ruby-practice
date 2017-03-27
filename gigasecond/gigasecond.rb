require 'chronic'

class Gigasecond

  def self.from(time)
    total_seconds = time.to_i + 10**9

    Time.at(total_seconds).utc
  end

end


module BookKeeping

  VERSION = 5

end