class Say
  NUMBER_NAMES = {
    1000000000 => "billion",
    1000000 => "million",
    1000 => "thousand",
    100 => "hundred",
    90 => "ninety",
    80 => "eighty",
    70 => "seventy",
    60 => "sixty",
    50 => "fifty",
    40 => "forty",
    30 => "thirty",
    20 => "twenty",
    19 => "nineteen",
    18 => "eighteen",
    17 => "seventeen",
    16 => "sixteen",
    15 => "fifteen",
    14 => "fourteen",
    13 => "thirteen",
    12 => "twelve",
    11 => "eleven",
    10 => "ten",
    9 => "nine",
    8 => "eight",
    7 => "seven",
    6 => "six",
    5 => "five",
    4 => "four",
    3 => "three",
    2 => "two",
    1 => "one",
  }

  private_constant :NUMBER_NAMES

  def initialize(integer)
    @integer = integer
  end

  def in_english
    return "zero" if integer == 0
    num_string = ""

    NUMBER_NAMES.each do |num, name|
      if integer.to_s.length == 1 && integer / num > 0
        return num_string + name
      elsif integer < 100 && integer / num > 0
        return num_string + name if integer % num == 0
        return num_string + name + "-" + self.class.new(integer % num).in_english
      elsif integer / num > 0
        if integer % num > 0
          return num_string + self.class.new(integer / num).in_english + " " + name + " " + self.class.new(integer % num).in_english
        else
          return num_string + self.class.new(integer / num).in_english + " " + name
        end
      end
    end

    num_string
  end


  private

  attr_reader :integer

end


module BookKeeping
  VERSION = 1
end
