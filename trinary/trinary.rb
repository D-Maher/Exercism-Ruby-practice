class Trinary

  def initialize(trinary_string)
    @trinary_string = trinary_string
  end

  def to_decimal
    trinary_split = trinary_string.chars

    valid_digits = %w(0 1 2)

    return 0 unless trinary_split.reject { |digit| valid_digits.include?(digit) }.empty?

    exponent = trinary_split.length - 1

    decimal = 0

    trinary_split.map(&:to_i).each do |num|
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
