class Grains

  def self.square(num)
    raise ArgumentError if !(1..64).include?(num)

    
    2 ** (num - 1)
  end

end


module BookKeeping

  VERSION = 1

end
