class Triangle

  def initialize(sides = [])
    @sides = sides
  end

  def equilateral?
    sides[0] > 0 && sides.count(sides[0]) == 3
  end


  private

  attr_reader :sides

end


module BookKeeping
  VERSION = 1
end
