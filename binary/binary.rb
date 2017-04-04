class Binary

  def self.to_decimal(bin_string)

    split_string = bin_string.chars

    unless split_string.reject { |char| char == "0" || char == "1" }.empty?
      raise ArgumentError, "Binary string must contain only 1s and 0s."
    end

    split_bin = split_string.map { |char| char.to_i }

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