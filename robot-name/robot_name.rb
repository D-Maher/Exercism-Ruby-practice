UPPERCASE = %w(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)

DIGITS = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]

NAMES_IN_USE = []


class Robot

  attr_reader :name

  def initialize
    @name = generate_name
  end

  def generate_name
    name = ""

    until !NAMES_IN_USE.include?(name) && !name.empty?
      2.times { name += UPPERCASE.sample }

      3.times { name += DIGITS.sample.to_s }
    end

    NAMES_IN_USE << name

    name
  end

end


module BookKeeping

  VERSION = 2

end
