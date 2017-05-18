class RailFenceCipher
  VERSION = 1

  def self.encode(message, number_of_rails)
    return "" if message.empty?
    return message if number_of_rails == 1
    return "More rails than letters" if number_of_rails > message.length

    fence = []
    number_of_rails.times { fence << [] }

    rail = 0
    bottom_rail = number_of_rails - 1
    going_down = true

    message.chars.each do |char|
      if rail == 0
        fence[rail] << char
        rail += 1
        going_down = true
      elsif rail < bottom_rail && going_down
        fence[rail] << char
        rail += 1
      elsif rail < bottom_rail && !going_down
        fence[rail] << char
        rail -= 1
      elsif rail == bottom_rail
        fence[rail] << char
        rail -= 1
        going_down = false
      end
    end

    fence.flatten.join
  end

  def self.decode(message, number_of_rails)
    return "" if message.empty?
    return message if number_of_rails == 1

    decoded_message = ""

    fence = []
    number_of_rails.times { fence << [] }

    rail = 0
    bottom_rail = number_of_rails - 1
    going_down = true
    message.length.times do
      if rail == 0
        fence[rail] << "?"
        rail += 1
        going_down = true
      elsif rail < bottom_rail && going_down
        fence[rail] << "?"
        rail += 1
      elsif rail < bottom_rail && !going_down
        fence[rail] << "?"
        rail -= 1
      elsif rail == bottom_rail
        fence[rail] << "?"
        rail -= 1
        going_down = false
      end
    end

    start_index = 0
    fence.each do |rail|
      rail.replace(message.chars.slice(start_index, rail.length))
      start_index += rail.length
    end

    rail = 0
    message.length.times do
      if rail == 0
        decoded_message += fence[rail].shift
        rail += 1
        going_down = true
      elsif rail < bottom_rail && going_down
        decoded_message += fence[rail].shift
        rail += 1
      elsif rail < bottom_rail && !going_down
        decoded_message += fence[rail].shift
        rail -= 1
      elsif rail == bottom_rail
        decoded_message += fence[rail].shift
        rail -= 1
        going_down = false
      end
    end

    decoded_message
  end

end
