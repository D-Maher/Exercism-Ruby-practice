class Robot
  UPPERCASE = %w(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)
  DIGITS = %w(1 2 3 4 5 6 7 8 9 0)
  private_constant :UPPERCASE, :DIGITS

  @@taken_names = []

  attr_reader :name

  def initialize
    @name = generate_name
  end

  def name_available?(name)
    !@@taken_names.include?(name) && !name.empty?
  end

  def generate_name
    name = ""

    until name_available?(name)
      name = ""
      2.times { name += UPPERCASE.sample }
      3.times { name += DIGITS.sample }
    end

    @@taken_names << name

    name
  end

  def reset
    @name = generate_name
  end

end


module BookKeeping

  VERSION = 2

end
