class Squares
  def initialize(n)
    @max_natural = n
  end

  def square_of_sum
   ((1..max_natural).reduce(0, :+)) ** 2
  end


  private

  attr_reader :max_natural

end


module BookKeeping

  VERSION = 3

end
