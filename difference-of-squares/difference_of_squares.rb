class Squares
  def initialize(n)
    @max_natural = n
  end

  def square_of_sum
   ((1..max_natural).reduce(:+)) ** 2
  end

  def sum_of_squares
    ((1..max_natural).to_a.map { |n| n ** 2}.reduce(:+))
  end

  private

  attr_reader :max_natural

end


module BookKeeping

  VERSION = 3

end
