class Robot
  @@uppercase = %w(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)

  @@digits = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]

  @@taken_names = []

  attr_reader :name

  def initialize
    @name = generate_name
  end

  def generate_name
    name = ""

    until !@@taken_names.include?(name) && !name.empty?
      name = ""
      2.times { name += @@uppercase.sample }
      3.times { name += @@digits.sample.to_s }
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
