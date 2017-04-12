class Trinary

  def initialize(trinary_string)
    @trinary_string = trinary_string
  end

  def to_decimal
    trinary_split = trinary_string.chars.map(&:to_i)

    exponent = trinary_split.length - 1

    decimal = 0

    trinary_split.each do |num|
      decimal += num * (3 ** exponent)
      exponent -= 1
    end

    decimal
  end


  private

  attr_reader :trinary_string

end

module BookKeeping

  VERSION = 1

end
