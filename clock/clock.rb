class Clock

  def self.at(hour, minute)
    if hour >= 24
      until hour < 24
        hour -= 24
      end
    elsif hour < 0
      until hour >= 0
        hour += 24
      end
    end
        
    if minute > 59
      until minute <= 59
        minute -= 60
        hour += 1
      end
    elsif minute < 0
      until minute >= 0
        minute += 60
        hour -= 1
      end
    end
        
    hour = hour.to_s
    minute = minute.to_s

    hour.length == 1 ? hour = "0#{hour}" : hour.to_s
    minute.length == 1 ? minute = "0#{minute}" : minute.to_s

    "#{hour}:#{minute}"
  end

end


module BookKeeping
  VERSION = 2
end
