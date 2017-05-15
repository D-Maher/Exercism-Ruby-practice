class Clock
  attr_reader :hour, :minute

  def initialize(hour, minute)
    @hour = hour
    @minute = minute
  end

  def self.at(hour, minute)
    time = adjust_time(hour, minute)

    new(time[:hour], time[:minute])
  end

  def to_s
    hour_string = hour.to_s
    minute_string = minute.to_s

    hour_string.length == 1 ? hour_string = "0#{hour_string}" : hour_string.to_s
    minute_string.length == 1 ? minute_string = "0#{minute_string}" : minute_string.to_s

    "#{hour_string}:#{minute_string}"
  end

  def +(minutes_to_add)
    new_minute = minute + minutes_to_add
    new_hour = hour
    time = adjust_time(new_hour, new_minute)

    self.class.new(time[:hour], time[:minute])
  end

end

def adjust_time(hour, minute)
  if minute >= 60
    until minute < 60
      minute -= 60
      hour += 1
    end
  elsif minute < 0
    until minute >= 0
      minute += 60
      hour -= 1
    end
  end

  if hour >= 24
    until hour < 24
      hour -= 24
    end
  elsif hour < 0
    until hour >= 0
      hour += 24
    end
  end 

  { hour: hour, minute: minute }
end


module BookKeeping
  VERSION = 2
end
