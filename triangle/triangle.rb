class Triangle

  def initialize(sides = [])
    @sides = sides
  end

  def equilateral?
    sides[0] > 0 && sides.count(sides[0]) == 3
  end

  def isosceles?
    side_combos = sides.permutation(2).to_a
    
    side_combos.each do |combo|
      if combo[0] == combo[1] && combo[0] + combo[1] >= sides.max
        return true
      end
    end

    false
  end


  private

  attr_reader :sides

end


module BookKeeping
  VERSION = 1
end
