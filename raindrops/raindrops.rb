class Raindrops

  def self.convert(num)
    raindrop_speak = ""

    if num % 3 == 0
      raindrop_speak += "Pling"
    end

    if num % 5 == 0
      raindrop_speak += "Plang"
    end

    if num % 7 == 0
      raindrop_speak += "Plong"
    end

    return num.to_s if raindrop_speak.empty?

    raindrop_speak
  end

end


module BookKeeping

  VERSION = 3

end
