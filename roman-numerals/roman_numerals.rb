class Fixnum

  def to_roman
    num = self
    roman_string = ""

    until num == 0
      if num >= 1000
        roman_string += "M"
        num -= 1000
      elsif num >= 900
        roman_string += "CM"
        num -= 900
      elsif num >= 500
        roman_string += "D"
        num -= 500
      elsif num >= 400
        roman_string += "CD"
        num -= 400
      elsif num >= 100
        roman_string += "C"
        num -= 100
      elsif num >= 90
        roman_string += "XC"
        num -= 90
      elsif num >= 50
        roman_string += "L"
        num -= 50
      elsif num >= 40
        roman_string += "XL"
        num -= 40
      elsif num >= 10
        roman_string += "X"
        num -= 10
      elsif num >= 9
        roman_string += "IX"
        num -= 9
      elsif num >= 5
        roman_string += "V"
        num -= 5
      elsif num >= 4
        roman_string += "IV"
        num -= 4
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
