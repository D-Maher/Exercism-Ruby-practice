class Hexadecimal
  HEX_MAP = {
    "a" => 10,
    "b" => 11,
    "c" => 12,
    "d" => 13,
    "e" => 14,
    "f" => 15
  }

  private_constant :HEX_MAP

  def initialize(hexadecimal)
    @hexadecimal = hexadecimal
  end

  def to_decimal
    decimal = 0
    split_hex = hexadecimal.chars

    split_hex.map! do |char|
      if HEX_MAP[char]
        char = HEX_MAP[char]
      else
        char.to_i
      end
    end

    split_hex.reverse.each_with_index do |value, i|
      decimal += value * 16 ** i
    end

    decimal
  end

  
  private

  attr_reader :hexadecimal

end
