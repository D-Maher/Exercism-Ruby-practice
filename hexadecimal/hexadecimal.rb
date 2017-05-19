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

  
  private

  attr_reader :hexadecimal

end
