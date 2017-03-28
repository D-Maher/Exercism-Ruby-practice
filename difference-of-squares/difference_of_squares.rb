class Squares

  def initialize(n)
    @max_natural = n
  end

  def square_of_sum
    return 0 if max_natural == 0
   ((1..max_natural).reduce(:+)) ** 2
  end

  def sum_of_squares
    return 0 if max_natural == 0
    ((1..max_natural).to_a.map { |n| n ** 2}.reduce(:+))
  end

  def difference
    square_of_sum - sum_of_squares
  end

  private

  attr_reader :max_natural

end


module BookKeeping

  VERSION = 3

end
