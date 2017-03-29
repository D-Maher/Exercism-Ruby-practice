class Fixnum

  def to_roman
    num = self
    roman_string = ""

    until num == 0
      if num >= 1000
        roman_string += "M"
        num -= 1000
      elsif num >= 500
        roman_string += "D"
        num -= 500
      elsif num >= 100
        roman_string += "C"
        num -= 100
      elsif num >= 50
        roman_string += "L"
        num -= 50
      elsif num >= 10
        roman_string += "X"
        num -= 10
      elsif num >= 5
        roman_string += "V"
        num -= 5
      elsif num >= 1
          roman_string += "I"
        num -= 1
      end
    end

    roman_string
  end

end


module BookKeeping

  VERSION = 2

end
