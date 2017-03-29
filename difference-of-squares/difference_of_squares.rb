class Squares

  def initialize(number)
    @number = number
  end

  def square_of_sum
    return 0 if number == 0
    (1..number).reduce(:+) ** 2
    # formula: (number * (number + 1) / 2) ** 2 
  end

  def sum_of_squares
    return 0 if number == 0
    (1..number).map { |n| n ** 2 }.reduce(:+)
  end

  def difference
    square_of_sum - sum_of_squares
  end

  private

  attr_reader :number

end


module BookKeeping

  VERSION = 3

end
