class Clock

  def self.at(hour, minute)
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
