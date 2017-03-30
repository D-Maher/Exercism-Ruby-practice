class Grains

  def self.square(num)
    raise ArgumentError if !(1..64).include?(num)

    2 ** (num - 1)
  end

  def self.total
    total = 0
    square_number = 1

    64.times {
      total += square(square_number)
      square_number += 1
    }

    total
  end

end


module BookKeeping

  VERSION = 1

end
