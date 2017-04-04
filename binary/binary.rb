class Binary

  def self.to_decimal(bin_string)

    split_bin = bin_string.chars.map { |char| char.to_i }

    decimal = 0
    counter = split_bin.length - 1

    split_bin.each do |num|
      decimal += num * (2 ** counter)
      counter -= 1
    end

    decimal

  end

end


module BookKeeping

  VERSION = 3

end
